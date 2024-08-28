=begin
#Docusign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Admin

  class GetUserProductPermissionProfilesByEmailOptions
    # Email address of the requested user
    attr_accessor :email

    def self.default
      @@default ||= GetUserProductPermissionProfilesByEmailOptions.new
    end
  end


  class ProductPermissionProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ProductPermissionProfilesApi.default)
      @api_client = api_client
    end

    # Assign user to permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_id The user ID GUID
    # @param product_permission_profiles_request Request object 
    # @return [UserProductPermissionProfilesResponse]
    def add_user_product_permission_profiles(organization_id, account_id, user_id, product_permission_profiles_request)
      data, _status_code, _headers = add_user_product_permission_profiles_with_http_info(organization_id, account_id, user_id,  product_permission_profiles_request)
      return data
    end

    # Assign user to permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_id The user ID GUID
    # @param product_permission_profiles_request Request object 
    # @return [Array<(UserProductPermissionProfilesResponse, Fixnum, Hash)>] UserProductPermissionProfilesResponse data, response status code and response headers
    def add_user_product_permission_profiles_with_http_info(organization_id, account_id, user_id, product_permission_profiles_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductPermissionProfilesApi.add_user_product_permission_profiles ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProductPermissionProfilesApi.add_user_product_permission_profiles" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling ProductPermissionProfilesApi.add_user_product_permission_profiles" if account_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling ProductPermissionProfilesApi.add_user_product_permission_profiles" if user_id.nil?
      # verify the required parameter 'product_permission_profiles_request' is set
      fail ArgumentError, "Missing the required parameter 'product_permission_profiles_request' when calling ProductPermissionProfilesApi.add_user_product_permission_profiles" if product_permission_profiles_request.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/products/users/{userId}/permission_profiles".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
      post_body = @api_client.object_to_http_body(product_permission_profiles_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserProductPermissionProfilesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductPermissionProfilesApi#add_user_product_permission_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Assign user to permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_product_permission_profiles_request Request object 
    # @return [UserProductPermissionProfilesResponse]
    def add_user_product_permission_profiles_by_email(organization_id, account_id, user_product_permission_profiles_request)
      data, _status_code, _headers = add_user_product_permission_profiles_by_email_with_http_info(organization_id, account_id,  user_product_permission_profiles_request)
      return data
    end

    # Assign user to permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_product_permission_profiles_request Request object 
    # @return [Array<(UserProductPermissionProfilesResponse, Fixnum, Hash)>] UserProductPermissionProfilesResponse data, response status code and response headers
    def add_user_product_permission_profiles_by_email_with_http_info(organization_id, account_id, user_product_permission_profiles_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductPermissionProfilesApi.add_user_product_permission_profiles_by_email ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProductPermissionProfilesApi.add_user_product_permission_profiles_by_email" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling ProductPermissionProfilesApi.add_user_product_permission_profiles_by_email" if account_id.nil?
      # verify the required parameter 'user_product_permission_profiles_request' is set
      fail ArgumentError, "Missing the required parameter 'user_product_permission_profiles_request' when calling ProductPermissionProfilesApi.add_user_product_permission_profiles_by_email" if user_product_permission_profiles_request.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/products/permission_profiles/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
      post_body = @api_client.object_to_http_body(user_product_permission_profiles_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserProductPermissionProfilesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductPermissionProfilesApi#add_user_product_permission_profiles_by_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get products associated with the account and the available permission profiles
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @return [ProductPermissionProfilesResponse]
    def get_product_permission_profiles(organization_id, account_id)
      data, _status_code, _headers = get_product_permission_profiles_with_http_info(organization_id, account_id)
      return data
    end

    # Get products associated with the account and the available permission profiles
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @return [Array<(ProductPermissionProfilesResponse, Fixnum, Hash)>] ProductPermissionProfilesResponse data, response status code and response headers
    def get_product_permission_profiles_with_http_info(organization_id, account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductPermissionProfilesApi.get_product_permission_profiles ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProductPermissionProfilesApi.get_product_permission_profiles" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling ProductPermissionProfilesApi.get_product_permission_profiles" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/products/permission_profiles".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
        :return_type => 'ProductPermissionProfilesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductPermissionProfilesApi#get_product_permission_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve list of user's permission profiles for each account's product
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_id The user ID GUID
    # @return [ProductPermissionProfilesResponse]
    def get_user_product_permission_profiles(organization_id, account_id, user_id)
      data, _status_code, _headers = get_user_product_permission_profiles_with_http_info(organization_id, account_id, user_id)
      return data
    end

    # Retrieve list of user&#39;s permission profiles for each account&#39;s product
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_id The user ID GUID
    # @return [Array<(ProductPermissionProfilesResponse, Fixnum, Hash)>] ProductPermissionProfilesResponse data, response status code and response headers
    def get_user_product_permission_profiles_with_http_info(organization_id, account_id, user_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductPermissionProfilesApi.get_user_product_permission_profiles ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProductPermissionProfilesApi.get_user_product_permission_profiles" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling ProductPermissionProfilesApi.get_user_product_permission_profiles" if account_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling ProductPermissionProfilesApi.get_user_product_permission_profiles" if user_id.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/products/users/{userId}/permission_profiles".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

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
        :return_type => 'ProductPermissionProfilesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductPermissionProfilesApi#get_user_product_permission_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove user from permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param DocuSign_Admin::GetUserProductPermissionProfilesByEmailOptions Options for modifying the behavior of the function.
    # @return [UserProductPermissionProfilesResponse]
    def get_user_product_permission_profiles_by_email(organization_id, account_id, options = DocuSign_Admin::GetUserProductPermissionProfilesByEmailOptions.default)
      data, _status_code, _headers = get_user_product_permission_profiles_by_email_with_http_info(organization_id, account_id, options)
      return data
    end

    # Remove user from permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param DocuSign_Admin::GetUserProductPermissionProfilesByEmailOptions Options for modifying the behavior of the function.
    # @return [Array<(UserProductPermissionProfilesResponse, Fixnum, Hash)>] UserProductPermissionProfilesResponse data, response status code and response headers
    def get_user_product_permission_profiles_by_email_with_http_info(organization_id, account_id, options = DocuSign_Admin::GetUserProductPermissionProfilesByEmailOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductPermissionProfilesApi.get_user_product_permission_profiles_by_email ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProductPermissionProfilesApi.get_user_product_permission_profiles_by_email" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling ProductPermissionProfilesApi.get_user_product_permission_profiles_by_email" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/products/permission_profiles/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'email'] = options.email if !options.email.nil?

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
        :return_type => 'UserProductPermissionProfilesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductPermissionProfilesApi#get_user_product_permission_profiles_by_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove user from permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_product_permission_profiles_request Request object 
    # @return [RemoveUserProductsResponse]
    def remove_user_product_permission(organization_id, account_id, user_product_permission_profiles_request)
      data, _status_code, _headers = remove_user_product_permission_with_http_info(organization_id, account_id,  user_product_permission_profiles_request)
      return data
    end

    # Remove user from permission profiles for one or more products
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param user_product_permission_profiles_request Request object 
    # @return [Array<(RemoveUserProductsResponse, Fixnum, Hash)>] RemoveUserProductsResponse data, response status code and response headers
    def remove_user_product_permission_with_http_info(organization_id, account_id, user_product_permission_profiles_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProductPermissionProfilesApi.remove_user_product_permission ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling ProductPermissionProfilesApi.remove_user_product_permission" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling ProductPermissionProfilesApi.remove_user_product_permission" if account_id.nil?
      # verify the required parameter 'user_product_permission_profiles_request' is set
      fail ArgumentError, "Missing the required parameter 'user_product_permission_profiles_request' when calling ProductPermissionProfilesApi.remove_user_product_permission" if user_product_permission_profiles_request.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/products/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
      post_body = @api_client.object_to_http_body(user_product_permission_profiles_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RemoveUserProductsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductPermissionProfilesApi#remove_user_product_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end