[![Release](https://img.shields.io/github/release/CasualGaming/cag-events-api.svg)](https://github.com/CasualGaming/cag-events-api/releases)
[![Travis CI](https://travis-ci.com/CasualGaming/cag-events-api.svg?branch=master)](https://travis-ci.com/CasualGaming/cag-events-api)

# CaG Events API
RESTful API specification for [CaG Events](https://github.com/CasualGaming/cag-events) in OpenAPI/Swagger format.

- [Docs](https://casualgaming.github.io/cag-events-api/) (automatically generated)
- [Swagger Editor](https://editor.swagger.io/) (online editor)

## Guidelines

- Generally, all minor and patch versions should be backwards compatible.
- All changes must be specified in the `CHANGELOG.md`.
- When ready to release, bump the version in `openapi.yaml` and `CHANGELOG.md` and add a new empty section in `CHANGELOG.md`.
- Release a new version using GitHub Releases with "CaG Events API vX.Y.Z" as the title and the relevant changelog section as the description.
