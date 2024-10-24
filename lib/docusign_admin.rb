=begin
#Docusign Admin API

#An API for an organization administrator to manage organizations, accounts and users

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

# Common files
require 'docusign_admin/client/api_client'
require 'docusign_admin/client/api_error'
require 'docusign_admin/version'
require 'docusign_admin/configuration'

# Client Files
require 'docusign_admin/client/auth/oauth'

# Models
require 'docusign_admin/models/add_ds_group_and_users_response'
require 'docusign_admin/models/add_ds_group_users_response'
require 'docusign_admin/models/add_user_response'
require 'docusign_admin/models/add_user_response_account_properties'
require 'docusign_admin/models/address_information'
require 'docusign_admin/models/asset_group_account_clone'
require 'docusign_admin/models/asset_group_account_clone_source_account'
require 'docusign_admin/models/asset_group_account_clone_target_account'
require 'docusign_admin/models/asset_group_account_clone_target_account_admin'
require 'docusign_admin/models/asset_group_account_clones'
require 'docusign_admin/models/asset_group_account_response'
require 'docusign_admin/models/asset_group_accounts_response'
require 'docusign_admin/models/certificate_response'
require 'docusign_admin/models/ds_group_add_request'
require 'docusign_admin/models/ds_group_and_users_response'
require 'docusign_admin/models/ds_group_list_response'
require 'docusign_admin/models/ds_group_request'
require 'docusign_admin/models/ds_group_response'
require 'docusign_admin/models/ds_group_user_response'
require 'docusign_admin/models/ds_group_users_add_request'
require 'docusign_admin/models/ds_group_users_remove_request'
require 'docusign_admin/models/ds_group_users_response'
require 'docusign_admin/models/delete_membership_request'
require 'docusign_admin/models/delete_membership_response'
require 'docusign_admin/models/delete_memberships_request'
require 'docusign_admin/models/delete_memberships_response'
require 'docusign_admin/models/delete_response'
require 'docusign_admin/models/delete_user_identity_request'
require 'docusign_admin/models/docu_sign_account_domain_model_address'
require 'docusign_admin/models/domain_response'
require 'docusign_admin/models/domains_response'
require 'docusign_admin/models/error_details'
require 'docusign_admin/models/force_activate_membership_request'
require 'docusign_admin/models/group_request'
require 'docusign_admin/models/identity_provider_response'
require 'docusign_admin/models/identity_providers_response'
require 'docusign_admin/models/individual_membership_data_redaction_request'
require 'docusign_admin/models/individual_user_data_redaction_request'
require 'docusign_admin/models/individual_user_data_redaction_response'
require 'docusign_admin/models/link_response'
require 'docusign_admin/models/member_group_response'
require 'docusign_admin/models/member_groups_response'
require 'docusign_admin/models/membership_data_redaction_request'
require 'docusign_admin/models/membership_data_redaction_response'
require 'docusign_admin/models/membership_response'
require 'docusign_admin/models/new_account_user_request'
require 'docusign_admin/models/new_multi_product_user_add_request'
require 'docusign_admin/models/new_user_request'
require 'docusign_admin/models/new_user_request_account_properties'
require 'docusign_admin/models/new_user_response'
require 'docusign_admin/models/new_user_response_account_properties'
require 'docusign_admin/models/oasirr_error_details'
require 'docusign_admin/models/oasirr_organization_account_settings_error_data_response'
require 'docusign_admin/models/oetr_error_details'
require 'docusign_admin/models/osamr_contact'
require 'docusign_admin/models/org_export_selected_account'
require 'docusign_admin/models/org_export_selected_domain'
require 'docusign_admin/models/org_report_configuration_response'
require 'docusign_admin/models/org_report_create_response'
require 'docusign_admin/models/org_report_list_response'
require 'docusign_admin/models/org_report_list_response_org_report'
require 'docusign_admin/models/org_report_list_response_requestor'
require 'docusign_admin/models/org_report_request'
require 'docusign_admin/models/organization_account_request'
require 'docusign_admin/models/organization_account_response'
require 'docusign_admin/models/organization_account_settings_import_requestor_response'
require 'docusign_admin/models/organization_account_settings_import_response'
require 'docusign_admin/models/organization_account_settings_import_result_response'
require 'docusign_admin/models/organization_accounts_request'
require 'docusign_admin/models/organization_export_account'
require 'docusign_admin/models/organization_export_domain'
require 'docusign_admin/models/organization_export_request'
require 'docusign_admin/models/organization_export_requestor_response'
require 'docusign_admin/models/organization_export_response'
require 'docusign_admin/models/organization_export_task_response'
require 'docusign_admin/models/organization_exports_response'
require 'docusign_admin/models/organization_import_response'
require 'docusign_admin/models/organization_import_response_error_rollup'
require 'docusign_admin/models/organization_import_response_requestor'
require 'docusign_admin/models/organization_import_response_warning_rollup'
require 'docusign_admin/models/organization_imports_response'
require 'docusign_admin/models/organization_response'
require 'docusign_admin/models/organization_salesforce_account_managers_response'
require 'docusign_admin/models/organization_simple_id_object'
require 'docusign_admin/models/organization_subscription_response'
require 'docusign_admin/models/organization_user_response'
require 'docusign_admin/models/organization_users_response'
require 'docusign_admin/models/organizations_response'
require 'docusign_admin/models/paging_response_properties'
require 'docusign_admin/models/permission_profile_request'
require 'docusign_admin/models/permission_profile_response'
require 'docusign_admin/models/permission_profile_response2_1'
require 'docusign_admin/models/permissions_response'
require 'docusign_admin/models/product_permission_profile_request'
require 'docusign_admin/models/product_permission_profile_response'
require 'docusign_admin/models/product_permission_profiles_request'
require 'docusign_admin/models/product_permission_profiles_response'
require 'docusign_admin/models/remove_ds_group_users_response'
require 'docusign_admin/models/remove_user_products_response'
require 'docusign_admin/models/required_attribute_mapping_response'
require 'docusign_admin/models/saml2_identity_provider_response'
require 'docusign_admin/models/setting_response'
require 'docusign_admin/models/sub_account_create_request'
require 'docusign_admin/models/sub_account_create_request_sub_account_creation_subscription'
require 'docusign_admin/models/sub_account_create_request_sub_account_creation_target_account_admin'
require 'docusign_admin/models/sub_account_create_request_sub_account_creation_target_account_details'
require 'docusign_admin/models/sub_account_create_subscription_details'
require 'docusign_admin/models/sub_account_create_subscription_module_details'
require 'docusign_admin/models/sub_account_create_target_account'
require 'docusign_admin/models/sub_account_create_target_account_admin'
require 'docusign_admin/models/sub_account_create_worker'
require 'docusign_admin/models/sub_account_create_worker_response'
require 'docusign_admin/models/sub_account_error_details'
require 'docusign_admin/models/subscription_plan_item_response'
require 'docusign_admin/models/subscription_provision_model_account_create_account_admin'
require 'docusign_admin/models/subscription_provision_model_account_create_create_account_details'
require 'docusign_admin/models/subscription_provision_model_account_create_create_account_subscription_details'
require 'docusign_admin/models/subscription_provision_model_account_create_create_sub_account_details'
require 'docusign_admin/models/subscription_provision_model_asset_group_work'
require 'docusign_admin/models/subscription_provision_model_asset_group_work_result'
require 'docusign_admin/models/subscription_provision_model_change_event'
require 'docusign_admin/models/subscription_provision_model_service_error_details'
require 'docusign_admin/models/update_membership_request'
require 'docusign_admin/models/update_response'
require 'docusign_admin/models/update_user_email_request'
require 'docusign_admin/models/update_user_request'
require 'docusign_admin/models/update_users_email_request'
require 'docusign_admin/models/update_users_request'
require 'docusign_admin/models/user_drilldown_response'
require 'docusign_admin/models/user_identity_request'
require 'docusign_admin/models/user_identity_response'
require 'docusign_admin/models/user_product_permission_profiles_request'
require 'docusign_admin/models/user_product_permission_profiles_response'
require 'docusign_admin/models/user_product_profile_delete_request'
require 'docusign_admin/models/user_update_response'
require 'docusign_admin/models/users_drilldown_response'
require 'docusign_admin/models/users_update_response'

# APIs
require 'docusign_admin/api/accounts_api'
require 'docusign_admin/api/bulk_exports_api'
require 'docusign_admin/api/bulk_imports_api'
require 'docusign_admin/api/ds_groups_api'
require 'docusign_admin/api/identity_providers_api'
require 'docusign_admin/api/organizations_api'
require 'docusign_admin/api/product_permission_profiles_api'
require 'docusign_admin/api/provision_asset_group_api'
require 'docusign_admin/api/reserved_domains_api'
require 'docusign_admin/api/users_api'

module DocuSign_Admin
  class << self
    # Customize default settings for the SDK using block.
    #   DocuSign_Admin.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end