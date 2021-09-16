=begin
#DocuSign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Admin

  class GetDSGroupUsersOptions
    # Start page of dsgroup users
    attr_accessor :page

    # Page size of dsgroup users
    attr_accessor :page_size

    def self.default
      @@default ||= GetDSGroupUsersOptions.new
    end
  end

  class GetDSGroupsOptions
    # Start page of dsgroups
    attr_accessor :page

    # Page size of dsgroups
    attr_accessor :page_size

    def self.default
      @@default ||= GetDSGroupsOptions.new
    end
  end


  class DSGroupsApi
    attr_accessor :api_client

    def initialize(api_client = DSGroupsApi.default)
      @api_client = api_client
    end

    # Add a new DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param add_request Add DSGroup request object 
    # @return [DSGroupResponse]
    def add_ds_group(organization_id, account_id, add_request)
      data, _status_code, _headers = add_ds_group_with_http_info(organization_id, account_id,  add_request)
      return data
    end

    # Add a new DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param add_request Add DSGroup request object 
    # @return [Array<(DSGroupResponse, Fixnum, Hash)>] DSGroupResponse data, response status code and response headers
    def add_ds_group_with_http_info(organization_id, account_id, add_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DSGroupsApi.add_ds_group ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling DSGroupsApi.add_ds_group" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling DSGroupsApi.add_ds_group" if account_id.nil?
      # verify the required parameter 'add_request' is set
      fail ArgumentError, "Missing the required parameter 'add_request' when calling DSGroupsApi.add_ds_group" if add_request.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/dsgroups".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

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
      post_body = @api_client.object_to_http_body(add_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DSGroupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DSGroupsApi#add_ds_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add list of users to a DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @param d_s_group_users_add_request Add DSGroup users request object 
    # @return [AddDSGroupAndUsersResponse]
    def add_ds_group_users(organization_id, account_id, ds_group_id, d_s_group_users_add_request)
      data, _status_code, _headers = add_ds_group_users_with_http_info(organization_id, account_id, ds_group_id,  d_s_group_users_add_request)
      return data
    end

    # Add list of users to a DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @param d_s_group_users_add_request Add DSGroup users request object 
    # @return [Array<(AddDSGroupAndUsersResponse, Fixnum, Hash)>] AddDSGroupAndUsersResponse data, response status code and response headers
    def add_ds_group_users_with_http_info(organization_id, account_id, ds_group_id, d_s_group_users_add_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DSGroupsApi.add_ds_group_users ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling DSGroupsApi.add_ds_group_users" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling DSGroupsApi.add_ds_group_users" if account_id.nil?
      # verify the required parameter 'ds_group_id' is set
      fail ArgumentError, "Missing the required parameter 'ds_group_id' when calling DSGroupsApi.add_ds_group_users" if ds_group_id.nil?
      # verify the required parameter 'd_s_group_users_add_request' is set
      fail ArgumentError, "Missing the required parameter 'd_s_group_users_add_request' when calling DSGroupsApi.add_ds_group_users" if d_s_group_users_add_request.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/dsgroups/{dsGroupId}/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'dsGroupId' + '}', ds_group_id.to_s)

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
      post_body = @api_client.object_to_http_body(d_s_group_users_add_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AddDSGroupAndUsersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DSGroupsApi#add_ds_group_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @return [nil]
    def delete_ds_group(organization_id, account_id, ds_group_id)
      delete_ds_group_with_http_info(organization_id, account_id, ds_group_id)
      return nil
    end

    # Delete a DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ds_group_with_http_info(organization_id, account_id, ds_group_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DSGroupsApi.delete_ds_group ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling DSGroupsApi.delete_ds_group" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling DSGroupsApi.delete_ds_group" if account_id.nil?
      # verify the required parameter 'ds_group_id' is set
      fail ArgumentError, "Missing the required parameter 'ds_group_id' when calling DSGroupsApi.delete_ds_group" if ds_group_id.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/dsgroups/{dsGroupId}".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'dsGroupId' + '}', ds_group_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DSGroupsApi#delete_ds_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of DSGroup
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The dsGroup ID GUID
    # @return [DSGroupResponse]
    def get_ds_group(organization_id, account_id, ds_group_id)
      data, _status_code, _headers = get_ds_group_with_http_info(organization_id, account_id, ds_group_id)
      return data
    end

    # Get list of DSGroup
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The dsGroup ID GUID
    # @return [Array<(DSGroupResponse, Fixnum, Hash)>] DSGroupResponse data, response status code and response headers
    def get_ds_group_with_http_info(organization_id, account_id, ds_group_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DSGroupsApi.get_ds_group ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling DSGroupsApi.get_ds_group" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling DSGroupsApi.get_ds_group" if account_id.nil?
      # verify the required parameter 'ds_group_id' is set
      fail ArgumentError, "Missing the required parameter 'ds_group_id' when calling DSGroupsApi.get_ds_group" if ds_group_id.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/dsgroups/{dsGroupId}".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'dsGroupId' + '}', ds_group_id.to_s)

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
        :return_type => 'DSGroupResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DSGroupsApi#get_ds_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of users in a DSGroup
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @param DocuSign_Admin::GetDSGroupUsersOptions Options for modifying the behavior of the function.
    # @return [DSGroupAndUsersResponse]
    def get_ds_group_users(organization_id, account_id, ds_group_id, options = DocuSign_Admin::GetDSGroupUsersOptions.default)
      data, _status_code, _headers = get_ds_group_users_with_http_info(organization_id, account_id, ds_group_id, options)
      return data
    end

    # Get list of users in a DSGroup
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @param DocuSign_Admin::GetDSGroupUsersOptions Options for modifying the behavior of the function.
    # @return [Array<(DSGroupAndUsersResponse, Fixnum, Hash)>] DSGroupAndUsersResponse data, response status code and response headers
    def get_ds_group_users_with_http_info(organization_id, account_id, ds_group_id, options = DocuSign_Admin::GetDSGroupUsersOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DSGroupsApi.get_ds_group_users ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling DSGroupsApi.get_ds_group_users" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling DSGroupsApi.get_ds_group_users" if account_id.nil?
      # verify the required parameter 'ds_group_id' is set
      fail ArgumentError, "Missing the required parameter 'ds_group_id' when calling DSGroupsApi.get_ds_group_users" if ds_group_id.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/dsgroups/{dsGroupId}/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'dsGroupId' + '}', ds_group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = options.page if !options.page.nil?
      query_params[:'page_size'] = options.page_size if !options.page_size.nil?

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
        :return_type => 'DSGroupAndUsersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DSGroupsApi#get_ds_group_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of DSGroups
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param DocuSign_Admin::GetDSGroupsOptions Options for modifying the behavior of the function.
    # @return [DSGroupListResponse]
    def get_ds_groups(organization_id, account_id, options = DocuSign_Admin::GetDSGroupsOptions.default)
      data, _status_code, _headers = get_ds_groups_with_http_info(organization_id, account_id, options)
      return data
    end

    # Get list of DSGroups
    # Required scopes: user_read
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param DocuSign_Admin::GetDSGroupsOptions Options for modifying the behavior of the function.
    # @return [Array<(DSGroupListResponse, Fixnum, Hash)>] DSGroupListResponse data, response status code and response headers
    def get_ds_groups_with_http_info(organization_id, account_id, options = DocuSign_Admin::GetDSGroupsOptions.default)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DSGroupsApi.get_ds_groups ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling DSGroupsApi.get_ds_groups" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling DSGroupsApi.get_ds_groups" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/dsgroups".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'page'] = options.page if !options.page.nil?
      query_params[:'page_size'] = options.page_size if !options.page_size.nil?

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
        :return_type => 'DSGroupListResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DSGroupsApi#get_ds_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove users from a DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @param d_s_group_users_remove_request Remove DSGroup users request object 
    # @return [RemoveDSGroupUsersResponse]
    def remove_ds_group_users(organization_id, account_id, ds_group_id, d_s_group_users_remove_request)
      data, _status_code, _headers = remove_ds_group_users_with_http_info(organization_id, account_id, ds_group_id,  d_s_group_users_remove_request)
      return data
    end

    # Remove users from a DSGroup
    # Required scopes: user_write
    # @param organization_id The organization ID GUID
    # @param account_id The account ID GUID
    # @param ds_group_id The DSGroup ID GUID
    # @param d_s_group_users_remove_request Remove DSGroup users request object 
    # @return [Array<(RemoveDSGroupUsersResponse, Fixnum, Hash)>] RemoveDSGroupUsersResponse data, response status code and response headers
    def remove_ds_group_users_with_http_info(organization_id, account_id, ds_group_id, d_s_group_users_remove_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DSGroupsApi.remove_ds_group_users ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling DSGroupsApi.remove_ds_group_users" if organization_id.nil?
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling DSGroupsApi.remove_ds_group_users" if account_id.nil?
      # verify the required parameter 'ds_group_id' is set
      fail ArgumentError, "Missing the required parameter 'ds_group_id' when calling DSGroupsApi.remove_ds_group_users" if ds_group_id.nil?
      # verify the required parameter 'd_s_group_users_remove_request' is set
      fail ArgumentError, "Missing the required parameter 'd_s_group_users_remove_request' when calling DSGroupsApi.remove_ds_group_users" if d_s_group_users_remove_request.nil?
      # resource path
      local_var_path = "/v2.1/organizations/{organizationId}/accounts/{accountId}/dsgroups/{dsGroupId}/users".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s).sub('{' + 'accountId' + '}', account_id.to_s).sub('{' + 'dsGroupId' + '}', ds_group_id.to_s)

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
      post_body = @api_client.object_to_http_body(d_s_group_users_remove_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RemoveDSGroupUsersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DSGroupsApi#remove_ds_group_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end