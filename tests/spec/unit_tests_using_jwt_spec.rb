require 'docusign_admin'
require 'base64'
require 'uri'
require 'json'
require 'time'

describe 'DocuSign Ruby Client Tests' do
	def login
		begin
			if $api_client.nil?
				configuration = DocuSign_Admin::Configuration.new
				configuration.host = $host

				$api_client = DocuSign_Admin::ApiClient.new(configuration)
        		$api_client.set_oauth_base_path(DocuSign_Admin::OAuth::DEMO_OAUTH_BASE_PATH)
				# $api_client.get_authorization_uri($integrator_key,'signature',$return_url,'code')
				# $api_client.request_jwt_application_token($integrator_key,File.read($private_key_filename),$expires_in_seconds,'' )
				# code = 'code_here'
				# $api_client.generate_access_token($integrator_key,$secret,code)
			end

		decode_base64_content = Base64.decode64(ENV["PRIVATE_KEY"])
 		File.open($private_key_filename, "wb") do |f|
 		  f.write(decode_base64_content)
 		end
		
		scopes = "signature organization_read user_read user_write"
	  	token_obj = $api_client.request_jwt_user_token(ENV["INTEGRATOR_KEY_JWT"],ENV["USER_ID"], File.read($private_key_filename),$expires_in_seconds, scopes)

	  	user_info = $api_client.get_user_info(token_obj.access_token)

		if !user_info.nil?
			user_info.accounts.each do |account|
				if account.is_default == "true"
					$base_uri = account.base_uri
					$account_id = account.account_id

					# IMPORTANT: Use the base url from the login account to instantiant the api_client
					base_uri = URI.parse($base_uri)
					# $api_client.set_base_path( "%s://%s/restapi" % [base_uri.scheme, base_uri.host])

					return account
				end
			end
		end
		rescue => e
		  puts "Error during processing: #{$!}"
		  # puts "Backtrace:\n\t#{e.backtrace.join("\n\t")}"
		end

		return nil
	end

	def create_api_client
		if $api_client.nil?
			self.login()
		end

		return $api_client
	end


  before(:all) do
    # run before each test
    $host = "https://api-d.docusign.net/management/"

  	$expires_in_seconds = 3600 #1 hour
  	$auth_server = 'account-d.docusign.com'
  	$private_key_filename = '../docs/private.pem'
    
    $recipient_name = "Ruby SDK"

    # Required for embedded signing url
    $client_user_id = '1234'
    $return_url = 'https://developers.docusign.com/'
    $authentication_method = 'email'
	    
    $template_id = ''
    $envelope_id = nil

    $base_uri = nil
    $account_id = nil
    $api_client = nil

	$organization_id = nil
  end

  after do
    # run after each test
  end

  describe DocuSign_Admin::OAuth do
  	describe '.login' do
  		context 'given correct credentials' do
  			it 'return Account' do
  				account = login()

				if !account.nil?
					$base_uri = account.base_uri
					$account_id = account.account_id
				end

		      expect($account_id).to be_truthy
		      expect($base_uri).to be_truthy
  			end
  		end
  	end
  end

  describe DocuSign_Admin::AccountsApi do
  	describe '.list' do
  		context 'list organizations' do
  			it 'successfully returns organizations list' do
				organizations_response = nil

				api_client = create_api_client()
				accounts_api = DocuSign_Admin::AccountsApi.new(api_client)
				
				options = DocuSign_Admin::GetOrganizationsOptions.new

				organizations_response = accounts_api.get_organizations(options)

				expect(organizations_response).to be_truthy
				if !organizations_response.nil?
					expect(organizations_response.organizations.length).to be > 0
					$organization_id = organizations_response.organizations[0].id
				end
  			end
  		end

		context 'bulk import users' do
			it 'successfully bulk import users' do
				organization_import_response = nil

				api_client = create_api_client()
				bulk_imports_api = DocuSign_Admin::BulkImportsApi.new(api_client)
				csv_file = '../docs/organization_user_import.csv'

				csv_file_content = File.read(csv_file)
				csv_file_content = csv_file_content.gsub(/<accountId>/, $account_id)
				
				if !$organization_id.nil?
					organization_import_response = bulk_imports_api.create_bulk_import_add_users_request($organization_id, csv_file_content)
				end

				expect(organization_import_response).to be_truthy
			#   if !organization_import_response.nil?
			# 	  expect(organization_import_response).to be_truthy
			#   end
			end
		end

		context 'create user' do
			it 'successfully create user' do
				response = nil

				api_client = create_api_client()
				users_api = DocuSign_Admin::UsersApi.new(api_client)
				
			  	permissionProfile = DocuSign_Admin::PermissionProfileRequest.new
				permissionProfile.id = 9305351

				account = DocuSign_Admin::NewUserRequestAccountProperties.new
				account.id = $account_id
				account.permission_profile = permissionProfile
				account.groups = Array.new
				
				accounts = Array.new
				accounts.push(account)

				request = DocuSign_Admin::NewUserRequest.new
				request.user_name = "testuser"
				request.email = "xxx@yyy.zzz"
				request.accounts = accounts

				response = users_api.create_user($organization_id, request)

				expect(response).to be_truthy
			end
		end

		context 'list product permission profiles' do
			it 'successfully returns product permission profiles list' do
				response = nil

				api_client = create_api_client()
				product_permission_profiles_api = DocuSign_Admin::ProductPermissionProfilesApi.new(api_client)
				response = product_permission_profiles_api.get_product_permission_profiles($organization_id, $account_id)
				
				expect(response).to be_truthy

				product_permission_profiles = response.product_permission_profiles
				expect(product_permission_profiles).to be_truthy
				expect(product_permission_profiles[0]).to be_truthy

				permission_profiles = product_permission_profiles[0].permission_profiles
				expect(permission_profiles).to be_truthy
				expect(permission_profiles[0]).to be_truthy
				expect(permission_profiles[0].permission_profile_id).to be_truthy
			end
		end

		context 'list user profiles' do
			it 'successfully returns user profiles list' do
				response = nil

				api_client = create_api_client()
				users_api = DocuSign_Admin::UsersApi.new(api_client)
				
				options = DocuSign_Admin::GetUsersOptions.new
				options.account_id = $account_id
			  	# Here we set the from_date to filter envelopes for the last 10 days
        		# Use ISO 8601 date format
        		options.last_modified_since = (Time.now - 10).iso8601

				response = users_api.get_users($organization_id, options)

				expect(response).to be_truthy
				expect(response.users).to be_truthy

				response.users.each do |user|
					profile_options = DocuSign_Admin::GetUserProfilesOptions.new
					profile_options.email = user.email
					response2 = users_api.get_user_profiles($organization_id, profile_options);
					expect(response2).to be_truthy
				end
			end
		end
	end
end
end