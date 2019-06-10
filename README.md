[![Release](https://img.shields.io/github/release/CasualGaming/cag-events-api.svg)](https://github.com/CasualGaming/cag-events-api/releases)
[![Travis CI](https://travis-ci.com/CasualGaming/cag-events-api.svg?branch=master)](https://travis-ci.com/CasualGaming/cag-events-api)

# CaG Events API
RESTful API specification for [CaG Events](https://github.com/CasualGaming/cag-events) in OpenAPI 3 format.

- [Specification](https://raw.githubusercontent.com/CasualGaming/cag-events-api/master/openapi.yaml)
- [Documentation](https://casualgaming.dev/cag-events-api/)

## Tools

- [openapi-list](https://marketplace.visualstudio.com/items?itemName=mermade.openapi-lint): VS Code plugin for linting OpenAPI 3.0.
- Swagger Editor (local): A Swagger 2 and OpenAPI 3 online web editor with auto complete and preview.

## Scripts

- `manage/editor.sh`: Start Swagger/OpenAPI editor web server (using Swagger Editor). The spec file must be imported and exported manually.
- `manage/validate-yaml.sh`: Validate the YAML file formatting/linting (using yamllint in Python 3 virtualenv).
- `manage/gen-docs.sh`: Generate web docs locally (using Swagger Codegen).
- `manage/gen-json.sh`: Generate JSON OpenAPI/Swagger file locally (using Swagger Codegen).
- `manage/clean.sh`: Clean temporary dirs and files.

## Guidelines

- Generally, all minor and patch versions should be backwards compatible.
- All changes must be specified in the `CHANGELOG.md`.
- When ready to release, bump the version in `openapi.yaml` and `CHANGELOG.md` and add a new empty section in `CHANGELOG.md`.
- Release a new version using GitHub Releases with "CaG Events API vX.Y.Z" as the title and the relevant changelog section as the description.

## License
This project is licensed under GPLv3, see LICENSE for the full license text.
