=begin
#Docusign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Admin

  class GetAssetGroupAccountCloneOptions
    # When true, include details for the asset group account clone.
    attr_accessor :include_details

    def self.default
      @@default ||= GetAssetGroupAccountCloneOptions.new
    end
  end

  class GetAssetGroupAccountClonesByOrgIdOptions
    # When provided and is in the past, only return asset group account clone(s) that is updated after the date.
    attr_accessor :since_updated_date

    # When true, include details for the asset group account clone(s).
    attr_accessor :include_details

    def self.default
      @@default ||= GetAssetGroupAccountClonesByOrgIdOptions.new
    end
  end

  class GetAssetGroupAccountsOptions
    # Whether to return accounts that are compliant. When provided, account responses will not include compliant field.
    attr_accessor :compliant

    def self.default
      @@default ||= GetAssetGroupAccountsOptions.new
    end
  end

  class GetSubAccountCreateProcessByAssetGroupWorkIdOptions
    # When true, include details for the asset group account create.
    attr_accessor :include_details

    def self.default
      @@default ||= GetSubAccountCreateProcessByAssetGroupWorkIdOptions.new
    end
  end

  class GetSubAccountCreateProcessesByOrgIdOptions
    # When provided and is in the past, only return asset group account create processes that are updated after the date.
    attr_accessor :since_updated_date

    # When true, include details for the asset group account create processes.
    attr_accessor :include_details

    def self.default
      @@default ||= GetSubAccountCreateProcessesByOrgIdOptions.new
    end
  end


  class ProvisionAssetGroupApi
    attr_accessor :api_client

    def initialize(api_client = ProvisionAssetGroupApi.default)
      @api_client = api_client
    end

    # Clones an existing Docusign account to a new Docusign account.
    # Currently this only clones eSign settings and asset group information.  Required scopes: asset_group_account_clone_write
    # @param organization_id The Guid representing the organization id.
    # @param request The request defails for the new asset group account clone. 
    # @return [AssetGroupAccountClone]
    def clone_asset_group_account(organization_id, request)
      data, _status_code, _headers = clone_asset_group_account_with_http_info(organization_id,  request)
      return data
    end

    # Clones an existing Docusign account to a new Docusign account.
    # Currently this only clones eSign settings and asset group information.  Required scopes: asset_group_account_clone_write
    # @param organization_id The Guid representing the organization id.
    # @param request The request defails for the new asset group account clone. 
    # @return [Array<(AssetGroupAccountClone, Fixnum, Hash)>] AssetGroupAccountClone data, response status code and response headers
    def clone_asset_group_account_with_http_info(organization_id, request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.clone_asset_group_account ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.clone_asset_group_account" if organization_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling ProvisionAssetGroupApi.clone_asset_group_account" if request.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/assetGroups/accountClone".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetGroupAccountClone')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#clone_asset_group_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new Docusign account using the plan and modules specified in request body.
    # Currently this only supports eSign plans and modules.  Required scopes: organization_sub_account_write
    # @param organization_id The Guid representing the organization id.
    # @param request The request details for the new account. 
    # @return [SubscriptionProvisionModelAssetGroupWorkResult]
    def create_asset_group_account(organization_id, request)
      data, _status_code, _headers = create_asset_group_account_with_http_info(organization_id,  request)
      return data
    end

    # Creates a new Docusign account using the plan and modules specified in request body.
    # Currently this only supports eSign plans and modules.  Required scopes: organization_sub_account_write
    # @param organization_id The Guid representing the organization id.
    # @param request The request details for the new account. 
    # @return [Array<(SubscriptionProvisionModelAssetGroupWorkResult, Fixnum, Hash)>] SubscriptionProvisionModelAssetGroupWorkResult data, response status code and response headers
    def create_asset_group_account_with_http_info(organization_id, request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.create_asset_group_account ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.create_asset_group_account" if organization_id.nil?
      # verify the required parameter 'request' is set
      fail ArgumentError, "Missing the required parameter 'request' when calling ProvisionAssetGroupApi.create_asset_group_account" if request.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/assetGroups/accountCreate".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionProvisionModelAssetGroupWorkResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#create_asset_group_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an asset group account clone by the asset group work id.
    # Required scopes: asset_group_account_clone_read
    # @param organization_id The Guid representing the organization id.
    # @param asset_group_id The Guid representing the asset group id.
    # @param asset_group_work_id The Guid representing the asset group account clone id
    # @param DocuSign_Admin::GetAssetGroupAccountCloneOptions Options for modifying the behavior of the function.
    # @return [AssetGroupAccountClone]
    def get_asset_group_account_clone(organization_id, asset_group_id, asset_group_work_id, options = DocuSign_Admin::GetAssetGroupAccountCloneOptions.default)
      data, _status_code, _headers = get_asset_group_account_clone_with_http_info(organization_id, asset_group_id, asset_group_work_id, options)
      return data
    end

    # Gets an asset group account clone by the asset group work id.
    # Required scopes: asset_group_account_clone_read
    # @param organization_id The Guid representing the organization id.
    # @param asset_group_id The Guid representing the asset group id.
    # @param asset_group_work_id The Guid representing the asset group account clone id
    # @param DocuSign_Admin::GetAssetGroupAccountCloneOptions Options for modifying the behavior of the function.
    # @return [Array<(AssetGroupAccountClone, Fixnum, Hash)>] AssetGroupAccountClone data, response status code and response headers
    def get_asset_group_account_clone_with_http_info(organization_id, asset_group_id, asset_group_work_id, options = DocuSign_Admin::GetAssetGroupAccountCloneOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.get_asset_group_account_clone ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.get_asset_group_account_clone" if organization_id.nil?
      # verify the required parameter 'asset_group_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_group_id' when calling ProvisionAssetGroupApi.get_asset_group_account_clone" if asset_group_id.nil?
      # verify the required parameter 'asset_group_work_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_group_work_id' when calling ProvisionAssetGroupApi.get_asset_group_account_clone" if asset_group_work_id.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/assetGroups/{assetGroupId}/accountClones/{assetGroupWorkId}".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'assetGroupId' + '}', asset_group_id.to_s).sub('{' + 'assetGroupWorkId' + '}', asset_group_work_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include_details'] = options.include_details if !options.include_details.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetGroupAccountClone')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#get_asset_group_account_clone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets all asset group account clone(s) for an organization id.
    # Required scopes: asset_group_account_clone_read
    # @param organization_id The Guid representing the organization id.
    # @param DocuSign_Admin::GetAssetGroupAccountClonesByOrgIdOptions Options for modifying the behavior of the function.
    # @return [AssetGroupAccountClones]
    def get_asset_group_account_clones_by_org_id(organization_id, options = DocuSign_Admin::GetAssetGroupAccountClonesByOrgIdOptions.default)
      data, _status_code, _headers = get_asset_group_account_clones_by_org_id_with_http_info(organization_id, options)
      return data
    end

    # Gets all asset group account clone(s) for an organization id.
    # Required scopes: asset_group_account_clone_read
    # @param organization_id The Guid representing the organization id.
    # @param DocuSign_Admin::GetAssetGroupAccountClonesByOrgIdOptions Options for modifying the behavior of the function.
    # @return [Array<(AssetGroupAccountClones, Fixnum, Hash)>] AssetGroupAccountClones data, response status code and response headers
    def get_asset_group_account_clones_by_org_id_with_http_info(organization_id, options = DocuSign_Admin::GetAssetGroupAccountClonesByOrgIdOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.get_asset_group_account_clones_by_org_id ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.get_asset_group_account_clones_by_org_id" if organization_id.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/assetGroups/accountClones".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'since_updated_date'] = options.since_updated_date if !options.since_updated_date.nil?
      query_params[:'include_details'] = options.include_details if !options.include_details.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetGroupAccountClones')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#get_asset_group_account_clones_by_org_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all accounts in asset groups for the organization.
    # Required scopes: asset_group_account_read
    # @param organization_id The Guid representing the organization id.
    # @param DocuSign_Admin::GetAssetGroupAccountsOptions Options for modifying the behavior of the function.
    # @return [AssetGroupAccountsResponse]
    def get_asset_group_accounts(organization_id, options = DocuSign_Admin::GetAssetGroupAccountsOptions.default)
      data, _status_code, _headers = get_asset_group_accounts_with_http_info(organization_id, options)
      return data
    end

    # Get all accounts in asset groups for the organization.
    # Required scopes: asset_group_account_read
    # @param organization_id The Guid representing the organization id.
    # @param DocuSign_Admin::GetAssetGroupAccountsOptions Options for modifying the behavior of the function.
    # @return [Array<(AssetGroupAccountsResponse, Fixnum, Hash)>] AssetGroupAccountsResponse data, response status code and response headers
    def get_asset_group_accounts_with_http_info(organization_id, options = DocuSign_Admin::GetAssetGroupAccountsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.get_asset_group_accounts ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.get_asset_group_accounts" if organization_id.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/assetGroups/accounts".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'compliant'] = options.compliant if !options.compliant.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AssetGroupAccountsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#get_asset_group_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the subscription details for an organization id.
    # Currently charges and non e-sign assets are excluded in the response.  Required scopes: organization_sub_account_read
    # @param organization_id The Guid representing the organization id.
    # @return [Array<OrganizationSubscriptionResponse>]
    def get_organization_plan_items(organization_id)
      data, _status_code, _headers = get_organization_plan_items_with_http_info(organization_id)
      return data
    end

    # Gets the subscription details for an organization id.
    # Currently charges and non e-sign assets are excluded in the response.  Required scopes: organization_sub_account_read
    # @param organization_id The Guid representing the organization id.
    # @return [Array<(Array<OrganizationSubscriptionResponse>, Fixnum, Hash)>] Array<OrganizationSubscriptionResponse> data, response status code and response headers
    def get_organization_plan_items_with_http_info(organization_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.get_organization_plan_items ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.get_organization_plan_items" if organization_id.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/planItems".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<OrganizationSubscriptionResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#get_organization_plan_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an asset group account create process info by the asset group work id.
    # Required scopes: organization_sub_account_read
    # @param organization_id The Guid representing the organization id.
    # @param asset_group_id The Guid representing the asset group id.
    # @param asset_group_work_id The Guid representing the asset group account create id
    # @param DocuSign_Admin::GetSubAccountCreateProcessByAssetGroupWorkIdOptions Options for modifying the behavior of the function.
    # @return [SubAccountCreateWorker]
    def get_sub_account_create_process_by_asset_group_work_id(organization_id, asset_group_id, asset_group_work_id, options = DocuSign_Admin::GetSubAccountCreateProcessByAssetGroupWorkIdOptions.default)
      data, _status_code, _headers = get_sub_account_create_process_by_asset_group_work_id_with_http_info(organization_id, asset_group_id, asset_group_work_id, options)
      return data
    end

    # Gets an asset group account create process info by the asset group work id.
    # Required scopes: organization_sub_account_read
    # @param organization_id The Guid representing the organization id.
    # @param asset_group_id The Guid representing the asset group id.
    # @param asset_group_work_id The Guid representing the asset group account create id
    # @param DocuSign_Admin::GetSubAccountCreateProcessByAssetGroupWorkIdOptions Options for modifying the behavior of the function.
    # @return [Array<(SubAccountCreateWorker, Fixnum, Hash)>] SubAccountCreateWorker data, response status code and response headers
    def get_sub_account_create_process_by_asset_group_work_id_with_http_info(organization_id, asset_group_id, asset_group_work_id, options = DocuSign_Admin::GetSubAccountCreateProcessByAssetGroupWorkIdOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.get_sub_account_create_process_by_asset_group_work_id ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.get_sub_account_create_process_by_asset_group_work_id" if organization_id.nil?
      # verify the required parameter 'asset_group_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_group_id' when calling ProvisionAssetGroupApi.get_sub_account_create_process_by_asset_group_work_id" if asset_group_id.nil?
      # verify the required parameter 'asset_group_work_id' is set
      fail ArgumentError, "Missing the required parameter 'asset_group_work_id' when calling ProvisionAssetGroupApi.get_sub_account_create_process_by_asset_group_work_id" if asset_group_work_id.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/assetGroup/{assetGroupId}/subAccountCreated/{assetGroupWorkId}".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'assetGroupId' + '}', asset_group_id.to_s).sub('{' + 'assetGroupWorkId' + '}', asset_group_work_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include_details'] = options.include_details if !options.include_details.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubAccountCreateWorker')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#get_sub_account_create_process_by_asset_group_work_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets all asset group account creation processes for an organization id.
    # Required scopes: organization_sub_account_read
    # @param organization_id The Guid representing the organization id.
    # @param DocuSign_Admin::GetSubAccountCreateProcessesByOrgIdOptions Options for modifying the behavior of the function.
    # @return [SubAccountCreateWorkerResponse]
    def get_sub_account_create_processes_by_org_id(organization_id, options = DocuSign_Admin::GetSubAccountCreateProcessesByOrgIdOptions.default)
      data, _status_code, _headers = get_sub_account_create_processes_by_org_id_with_http_info(organization_id, options)
      return data
    end

    # Gets all asset group account creation processes for an organization id.
    # Required scopes: organization_sub_account_read
    # @param organization_id The Guid representing the organization id.
    # @param DocuSign_Admin::GetSubAccountCreateProcessesByOrgIdOptions Options for modifying the behavior of the function.
    # @return [Array<(SubAccountCreateWorkerResponse, Fixnum, Hash)>] SubAccountCreateWorkerResponse data, response status code and response headers
    def get_sub_account_create_processes_by_org_id_with_http_info(organization_id, options = DocuSign_Admin::GetSubAccountCreateProcessesByOrgIdOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvisionAssetGroupApi.get_sub_account_create_processes_by_org_id ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProvisionAssetGroupApi.get_sub_account_create_processes_by_org_id" if organization_id.nil?
      # resource path
      local_var_path = "/v2/organizations/{organizationId}/subAccountsCreated".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'since_updated_date'] = options.since_updated_date if !options.since_updated_date.nil?
      query_params[:'include_details'] = options.include_details if !options.include_details.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubAccountCreateWorkerResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvisionAssetGroupApi#get_sub_account_create_processes_by_org_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end