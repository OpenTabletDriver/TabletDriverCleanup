## Config Files

All config attributes are optional. Any omitted attributes will be ignored when matching.

### `device_identifiers.json`

- `friendly_name`: Displayed to user, not matched against
- `device_desc`: Regex match (`Device Description` in pnputil_devices dump)
- `manufacturer`: Regex match (`Manufacturer Name` in pnputil_devices dump)
- `hardware_id`: Regex match (`Instance ID` in pnputil_devices dump)
- `class_uuid`: Exact string match (`Class GUID` in pnputil_devices dump)
- `inf_provider`: Regex match (`Provider Name` in pnputil_devices dump)

### `driver_identifiers.json`

- `friendly_name`: Displayed to user, not matched against
- `original_name`: Regex match (`Original Name` in pnputil_drivers dump)
- `provider`: Regex match (`Provider Name` in pnputil_drivers dump)
- `class`: Exact string match (`Class GUID` in pnputil_drivers dump)

### `driver_package_identifiers.json`

- `friendly_name`: Displayed to user, not matched against
- `display_name`: Regex match
- `display_version`: Regex match
- `publisher`: Regex match
- `uninstall_method`: `Normal|Deferred|RegistryOnly`

## Github Release Instructions

- Set the new version in `Cargo.toml` and let it propagate to `Cargo.lock`.
- PR and merge the version bump change.
- Push a tag with the new version and a draft release will be created.
- Review the draft and set it to latest if it looks good.
- A PR will be automatically created to pull the latest changes from `main` into the config branch.
