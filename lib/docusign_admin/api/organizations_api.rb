=begin
#DocuSign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_Admin


  class OrganizationsApi
    attr_accessor :api_client

    def initialize(api_client = OrganizationsApi.default)
      @api_client = api_client
    end

    # Redacts membership and user data for users in an organization.
    # Required scopes: user_data_redact
    # @param organization_id The organization ID Guid
    # @param request_model The request body describing the users and memberships to be redacted 
    # @return [IndividualUserDataRedactionResponse]
    def redact_individual_user_data(organization_id, request_model)
      data, _status_code, _headers = redact_individual_user_data_with_http_info(organization_id,  request_model)
      return data
    end

    # Redacts membership and user data for users in an organization.
    # Required scopes: user_data_redact
    # @param organization_id The organization ID Guid
    # @param request_model The request body describing the users and memberships to be redacted 
    # @return [Array<(IndividualUserDataRedactionResponse, Fixnum, Hash)>] IndividualUserDataRedactionResponse data, response status code and response headers
    def redact_individual_user_data_with_http_info(organization_id, request_model)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganizationsApi.redact_individual_user_data ..."
      end
      # verify the required parameter 'organization_id' is set
      fail ArgumentError, "Missing the required parameter 'organization_id' when calling OrganizationsApi.redact_individual_user_data" if organization_id.nil?
      # verify the required parameter 'request_model' is set
      fail ArgumentError, "Missing the required parameter 'request_model' when calling OrganizationsApi.redact_individual_user_data" if request_model.nil?
      # resource path
      local_var_path = "/v2/data_redaction/organizations/{organizationId}/user".sub('{format}','json').sub('{' + 'organizationId' + '}', organization_id.to_s)

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
      post_body = @api_client.object_to_http_body(request_model)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IndividualUserDataRedactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganizationsApi#redact_individual_user_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end