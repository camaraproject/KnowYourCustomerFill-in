# Changelog Know Your Customer Fill-in

## Table of Contents

- **[r1.3](#r13) Fall25**
- [r1.2](#r12)
- [r1.1](#r11)

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

# r1.3

## Release Notes

This maintenance release contains the definition and documentation of

* kyc-fill-in v0.4.1

The API definition(s) are based on
* Commonalities v0.6.1 [r3.4](https://github.com/camaraproject/Commonalities/releases/tag/r3.3)

* Identity and Consent Management v0.4.0 [r3.3](https://github.com/camaraproject/IdentityAndConsentManagement/releases/tag/r3.3)

## kyc-fill-in v0.4.1
- kyc-fill-in v0.4.1 API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/KnowYourCustomerFill-in/blob/r1.3/code/API_definitions/kyc-fill-in.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.3/code/API_definitions/kyc-fill-in.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.3/code/API_definitions/kyc-fill-in.yaml&nocors)

### Added
* Include success scenarios with scopes and 403 PERMISSION_DENIED scenarios in test plan by @fernandopradocabrillo in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/37

### Fixed
* Set body as required by @fernandopradocabrillo in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/32

## New Contributors
* @fernandopradocabrillo made their first contribution in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/31

**Full Changelog**: https://github.com/camaraproject/KnowYourCustomerFill-in/compare/r1.2...r1.3

# r1.2

## Release Notes

**NEW**: this public release contains the definition and documentation of

* kyc-fill-in v0.4.0

The API definition(s) are based on
* Commonalities v0.6.0 [r3.3](https://github.com/camaraproject/Commonalities/releases/tag/r3.3)
* Identity and Consent Management v0.4.0 [r3.3](https://github.com/camaraproject/IdentityAndConsentManagement/releases/tag/r3.3)

## kyc-fill-in v0.4.0

- kyc-fill-in v0.4.0 API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/KnowYourCustomerFill-in/blob/r1.2/code/API_definitions/kyc-fill-in.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.2/code/API_definitions/kyc-fill-in.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.2/code/API_definitions/kyc-fill-in.yaml&nocors)

### Added
 * Some attributes of the end user information added by the following two PRs:
   * [kyc-fill-in] Birth & Citizenship Information by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/11
   * [kyc-fill-in] Extended "ID Document" Attribute by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/18

 * [kyc-fill-in] Add text on undocumented errors to OAS definition by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/15

### Changed
 * [kyc-fill-in] Update x-correlator format by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/13

### Fixed
 * A typo correction, adding code markdown to kyc-fill-in:set-all in the yaml by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/27 (M4 Release PR)
 * Alignment with Commonalities r3.3 by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/26
 * [KYC Fill-in] Correction of example for gender attribute by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/6

### Removed
 * [kyc-fill-in] Remove AUTHENTICATION_REQUIRED error cod by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/8

**Full Changelog**: https://github.com/camaraproject/KnowYourCustomerFill-in/compare/r1.1...r1.2

# r1.1

## Release Notes

This pre-release contains the definition and documentation of
* kyc-fill-in v0.4.0-rc.1

The API definition(s) are based on
* Commonalities v0.6.0-rc.1 (r3.2)
* Identity and Consent Management v0.4.0-rc.1 (r3.2)

## kyc-fill-in v0.4.0-rc.1

**kyc-fill-in v0.4.0-rc.1 is the first release-candidate version for v0.4.0 of the CAMARA KnowYourCustomer Fill-in API**

- kyc-fill-in v0.4.0-rc.1 API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/KnowYourCustomerFill-in/blob/r1.1/code/API_definitions/kyc-fill-in.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.1/code/API_definitions/kyc-fill-in.yaml&nocors)
  - [View it on Swagger Editor](https://camaraproject.github.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.1/code/API_definitions/kyc-fill-in.yaml&nocors)

### Added
 * Some attributes of the end user information added by the following two PRs:
   * [kyc-fill-in] Birth & Citizenship Information by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/11
   * [kyc-fill-in] Extended "ID Document" Attribute by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/18

 * [kyc-fill-in] Add text on undocumented errors to OAS definition by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/15

### Changed
 * [kyc-fill-in] Update x-correlator format by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/13

### Fixed
 * [KYC Fill-in] Correction of example for gender attribute by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/6

### Removed
 * [kyc-fill-in] Remove AUTHENTICATION_REQUIRED error cod by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/8


---

# History of Changelog Know Your Customer Fill-in

**The repository KnowYourCustomerFill-in was created for kyc-fill-in v0.4.0 and the previous versions of the kyc-fill-in API were stored in the previous repository 'KnowYourCustomer'.  Below is the link to CHANGELOG.md in the previous repository.
which includes the kyc-match API and the kyc-age-verification API in addition to the kyc-fill-in API.**
* **[Link to CHANGELOG.md for kyc-fill-in versions before v0.4.0.](https://github.com/camaraproject/KnowYourCustomer/blob/main/CHANGELOG.md)**




