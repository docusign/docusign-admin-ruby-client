## [v2.0.0.rc1] - Admin API v2.1-1.4.0 - 2024-08-27
### Breaking Changes
<details>
<summary>API Changes (Click to expand)</summary>

<br/>
<div style="margin-left: 20px;">

Added new query parameter "include_ds_groups" to the API "/v2/organizations/{organizationId}/users":

<h3>Added New APIs for Account Creation</h3>
<li>GET: get subscription details for organization</li>
<li>POST: initiate Create account request</li>
<li>GET: get ongoing process details by org ID</li>
<li>GET: get individual process details by org ID, asset group ID, asset group work ID</li>


</div>
</details>
 
### Other Changes
- Updated logic to derive the `oauth_base_path` from `base_path`.
- Added support for version v2.1-1.4.0 of the DocuSign Admin API.
- Updated the SDK release version.

## [v1.3.0] - Admin API v2.1-1.3.0 - 2023-08-02
### Changed
- Added support for version v2.1-1.3.0 of the DocuSign Admin API.
- Updated the SDK release version.

New endpoints:
* `GET /v1/organizations/{organizationId}/assetGroups/accounts` Get asset group accounts for an organization.
* `POST /v1/organizations/{organizationId}/assetGroups/accountClone` Clone an existing DocuSign account.
* `GET /v1/organizations/{organizationId}/assetGroups/accountClones` Gets all asset group account clones for an organization.
* `GET /v1/organizations/{organizationId}/assetGroups/{assetGroupId}/accountClones/{assetGroupWorkId}` Gets information about a single cloned account.
## [v1.2.0] - Admin API v2.1-1.2.0 - 2023-05-21
### Changed
- Added support for version v2.1-1.2.0 of the DocuSign Admin API.
- Updated the SDK release version.

## [v1.1.0] - Admin API v2.1-1.1.0 - 2022-04-26
### Changed
- Added support for version v2.1-1.1.0 of the DocuSign Admin API.
- Updated the SDK release version.

## [1.0.0] - Admin API v2.1-1.0.0 - 2021-09-16
### Changed
- Added support for version v2.1-1.0.0 of the DocuSign Admin API.
- Updated the SDK release version.


