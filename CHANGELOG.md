# Changelog Know Your Customer Fill-in

## Table of Contents

- [r1.1](#r11)

**Please be aware that the project will have frequent updates to the main branch. There are no compatibility guarantees associated with code in any branch, including main, until it has been released. For example, changes may be reverted before a release is published. For the best results, use the latest published release.**

The below sections record the changes for each API version in each release as follows:

* for an alpha release, the delta with respect to the previous release
* for the first release-candidate, all changes since the last public release
* for subsequent release-candidate(s), only the delta to the previous release-candidate
* for a public release, the consolidated changes since the previous public release

# r1.1

## Release Notes

This release contains the definition and documentation of
* kyc-fill-in v0.4.0-rc.1

The API definition(s) are based on
* Commonalities v0.6.0
* Identity and Consent Management v0.4.0

## kyc-fill-in v0.4.0-rc.1

**kyc-fill-in v0.4.0-rc.1 is the release-candidate version for v0.4.0 of the CAMARA KnowYourCustomer Fill-in API**

- kyc-fill-in v0.4.0-rc.1 API definition **with inline documentation**:
  - OpenAPI [YAML spec file](https://github.com/camaraproject/KnowYourCustomerFill-in/blob/r1.1/code/API_definitions/kyc-fill-in.yaml)
  - [View it on ReDoc](https://redocly.github.io/redoc/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.1/code/API_definitions/kyc-fill-in.yaml&nocors)
  - [View it on Swagger Editor](https://editor.swagger.io/swagger-ui/?url=https://raw.githubusercontent.com/camaraproject/KnowYourCustomerFill-in/r1.1/code/API_definitions/kyc-fill-in.yaml&nocors)

**Changed**
- [KYC Fill-in] Correction of example for gender attribute by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/6
- [kyc-fill-in] Remove AUTHENTICATION_REQUIRED error cod by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/8
- [kyc-fill-in] Birth & Citizenship Information by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/11
- [kyc-fill-in] Update x-correlator format by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/13
- [kyc-fill-in] Add text on undocumented errors to OAS definition by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/15
- [kyc-fill-in] Extended "ID Document" Attribute by @ToshiWakayama-KDDI in https://github.com/camaraproject/KnowYourCustomerFill-in/pull/18



# History of Changelog Know Your Customer Fill-in

**The repository KnowYourCustomerFill-in was created for kyc-fill-in v0.4.0 and the previous versions of the kyc-fill-in API were stored in the old repository KnowYourCustomer.  Below is Changelog from the KnowYourCustomer repository which includes the kyc-match API and the kyc-age-verification API in addition to the kyc-fill-in API.**

**Changelog history to be copy-and-pasted from the old repo shortly.**



