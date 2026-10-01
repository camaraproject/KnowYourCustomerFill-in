Feature: CAMARA Know Your Customer Fill-in API, vwip - Operation KYC_Fill-in

# Input to be provided by the implementation to the tester
#
# Implementation indications:
# * apiRoot: API root of the server URL
#
#
# Testing assets:
# * A mobile line identified by its phone number "phoneNumber"
#
# References to OAS spec schemas refer to schemas specifies in kyc-fill-in.yaml

  Background: Common KYC_Fill-in_API setup
    Given an environment at "apiRoot"
    And the resource "/kyc-fill-in/vwip/fill-in"
    And the header "Content-Type" is set to "application/json"
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" complies with the schema at "#/components/schemas/XCorrelator"
    And the request body is set by default to a request body compliant with the schema

    ############################################
    # Happy path scenarios for fill-in operation
    ############################################

  @kycFillin_01_success_request_response
  Scenario: Validation for success fill-in request and response scenario
    Given a valid testing phone number supported by the service, identified by the access token or provided in the request body
    And the resource "/kyc-fill-in/vwip"
    When the request "kycFillin" is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response body complies with the OAS schema at "/components/schemas/KYC_FillinResponse"

  @kycFillin_02_success_request_set-all_scope
  Scenario: Validate successful response when the access token has the "kyc-fill-in:set-all" scope
    Given a valid testing phone number supported by the service, identified by the access token or provided in the request body
    And the header "Authorization" is set to a valid access token with the "kyc-fill-in:set-all" scope
    When the request "kycFillin" is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response body complies with the OAS schema at "/components/schemas/KYC_FillinResponse"
    And the response body contains all the available properties defined in the schema

  @kycFillin-in_03_success_request_individual_scopes
  Scenario: Validate successful response when the access token has individual scopes
    Given a valid testing phone number supported by the service, identified by the access token or provided in the request body
    And the header "Authorization" is set to a valid access token
    And the access token contains the scope "<scope>" and does not contain the "kyc-fill-in:set-all" scope
    When the request "kycFillin" is sent
    Then the response status code is 200
    And the response body complies with the OAS schema at "/components/schemas/KYC_FillinResponse"
    And the response body only contains the property "<response_body_property>" if it is available

    Examples:
      | scope                            | response_body_property |
      | kyc-fill-in:address              | $.address              |
      | kyc-fill-in:birthdate            | $.birthdate            |
      | kyc-fill-in:cityOfBirth          | $.cityOfBirth          |
      | kyc-fill-in:country              | $.country              |
      | kyc-fill-in:countryOfBirth       | $.countryOfBirth       |
      | kyc-fill-in:email                | $.email                |
      | kyc-fill-in:familyName           | $.familyName           |
      | kyc-fill-in:familyNameAtBirth    | $.familyNameAtBirth    |
      | kyc-fill-in:gender               | $.gender               |
      | kyc-fill-in:givenName            | $.givenName            |
      | kyc-fill-in:houseNumberExtension | $.houseNumberExtension |
      | kyc-fill-in:idDocument           | $.idDocument           |
      | kyc-fill-in:idDocumentExpiryDate | $.idDocumentExpiryDate |
      | kyc-fill-in:idDocumentType       | $.idDocumentType       |
      | kyc-fill-in:locality             | $.locality             |
      | kyc-fill-in:middleNames          | $.middleNames          |
      | kyc-fill-in:name                 | $.name                 |
      | kyc-fill-in:nameKanaHankaku      | $.nameKanaHankaku      |
      | kyc-fill-in:nameKanaZenkaku      | $.nameKanaZenkaku      |
      | kyc-fill-in:nationality          | $.nationality          |
      | kyc-fill-in:phoneNumber          | $.phoneNumber          |
      | kyc-fill-in:postalCode           | $.postalCode           |
      | kyc-fill-in:region               | $.region               |
      | kyc-fill-in:streetName           | $.streetName           |
      | kyc-fill-in:streetNumber         | $.streetNumber         |

    # Generic 400 errors

  @kyc-fill-in_kycFillin_400.01_schema_not_compliant
  Scenario: Invalid Argument. Generic Syntax Exception
    Given the request body is included but is not compliant with the schema at "#/components/schemas/KycFillinRequest"
    When the request "kycFillin" is sent
    Then the response status code is 400
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @kyc-fill-in_kycFillin_400.02_no_request_body
  Scenario: Missing request body
    Given the request body is not included
    When the request "kycFillin" is sent
    Then the response status code is 400
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @kyc-fill-in_kycFillin_400.06_invalid_x-correlator
  Scenario: Invalid x-correlator header
    Given the header "x-correlator" does not comply with the schema at "#/components/schemas/XCorrelator"
    When the request "kycFillin" is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

    # Generic 401 errors

  @kyc-fill-in_kycFillin_401.01_no_authorization_header
  Scenario: Error response for no header "Authorization"
    Given the header "Authorization" is not sent
    When the request "kycFillin" is sent
    Then the response status code is 401
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text

  @kyc-fill-in_kycFillin_401.02_expired_access_token
  Scenario: Error response for expired access token
    Given the header "Authorization" is set to an expired access token
    When the request "kycFillin" is sent
    Then the response status code is 401
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text

  @kyc-fill-in_kycFillin_401.03_invalid_access_token
  Scenario: Error response for invalid access token
    Given the header "Authorization" is set to an invalid access token
    When the request "kycFillin" is sent
    Then the response status code is 401
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text

    # Generic 403 errors

  @kyc-fill-in_kycFillin_403.01_missing_access_token_scope
  Scenario: Missing access token scope
    Given the header "Authorization" is set to an access token that does not contain any of the following scopes:
      | scope                            |
      | kyc-fill-in:set-all              |
      | kyc-fill-in:address              |
      | kyc-fill-in:birthdate            |
      | kyc-fill-in:cityOfBirth          |
      | kyc-fill-in:country              |
      | kyc-fill-in:countryOfBirth       |
      | kyc-fill-in:email                |
      | kyc-fill-in:familyName           |
      | kyc-fill-in:familyNameAtBirth    |
      | kyc-fill-in:gender               |
      | kyc-fill-in:givenName            |
      | kyc-fill-in:houseNumberExtension |
      | kyc-fill-in:idDocument           |
      | kyc-fill-in:idDocumentExpiryDate |
      | kyc-fill-in:idDocumentType       |
      | kyc-fill-in:locality             |
      | kyc-fill-in:middleNames          |
      | kyc-fill-in:name                 |
      | kyc-fill-in:nameKanaHankaku      |
      | kyc-fill-in:nameKanaZenkaku      |
      | kyc-fill-in:nationality          |
      | kyc-fill-in:phoneNumber          |
      | kyc-fill-in:postalCode           |
      | kyc-fill-in:region               |
      | kyc-fill-in:streetName           |
      | kyc-fill-in:streetNumber         |
    When the request "kycFillin" is sent
    Then the response status code is 403
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 403
    And the response property "$.code" is "PERMISSION_DENIED"
    And the response property "$.message" contains a user friendly text

  @kyc-fill-in_kycFillin_403.02_api_client_token_mismatch
  Scenario: "/verify" not created by the API client given in the access token
    # To test this, a token has to be obtained for a different client
    Given the header "Authorization" is set to a valid access token emitted to an API client which did not have rights to access/manage the "/fill-in"
    When the request "kycFillin" is sent
    Then the response status code is 403
    And the response header "x-correlator" has same value as the request header "x-correlator"
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 403
    And the response property "$.code" is "PERMISSION_DENIED"
    And the response property "$.message" contains a user friendly text

  # Generic 429 errors

  @kyc-fill-in_kycFillin_429.01_Too_Many_Requests
  #To test this scenario environment has to be configured to reject requests reaching the threshold limit set.
  Scenario: Request is rejected due to threshold policy
    Given a valid request for "kycFillin"
    And the header "Authorization" is set to a valid access token
    And the threshold of requests has been reached
    When the request "kycFillin" is sent
    Then the response status code is 429
    And the response property "$.status" is 429
    And the response property "$.code" is "TOO_MANY_REQUESTS"
    And the response property "$.message" contains a user friendly text

    # Error scenarios for management of input parameter phoneNumber

  @kyc-fill-in_C02.01_phone_number_not_schema_compliant
  Scenario: Phone number value does not comply with the schema
    Given the header "Authorization" is set to a valid access token which does not identify a single phone number
    And the request body property "$.phoneNumber" does not comply with the OAS schema at "#/components/schemas/PhoneNumber"
    When the request "kycFillin" is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

# Typically with a 2-legged access token
  @kyc-fill-in_C02.02_phone_number_not_found
  Scenario: Phone number not found
    Given the header "Authorization" is set to a valid access token which does not identify a single phone number
    And the request body property "$.phoneNumber" is compliant with the schema but does not identify a valid phone number
    When the request "kycFillin" is sent
    Then the response status code is 404
    And the response property "$.status" is 404
    And the response property "$.code" is "IDENTIFIER_NOT_FOUND"
    And the response property "$.message" contains a user friendly text

# Only with a 3-legged access token
  @kyc-fill-in_C02.03_unnecessary_phone_number
  Scenario: Phone number not to be included when it can be deduced from the access token
    Given the header "Authorization" is set to a valid access token identifying a phone number
    And  the request body property "$.phoneNumber" is set to a valid phone number
    When the request "kycFillin" is sent
    Then the response status code is 422
    And the response property "$.status" is 422
    And the response property "$.code" is "UNNECESSARY_IDENTIFIER"
    And the response property "$.message" contains a user friendly text

  @kyc-fill-in_C02.04_missing_phone_number
  Scenario: Phone number not included and cannot be deduced from the access token
    Given the header "Authorization" is set to a valid access token which does not identify a single phone number
    And the request body property "$.phoneNumber" is not included
    When the request "kycFillin" is sent
    Then the response status code is 422
    And the response property "$.status" is 422
    And the response property "$.code" is "MISSING_IDENTIFIER"
    And the response property "$.message" contains a user friendly text

    # When the service is only offered to certain type of subscriptions, e.g. IoT, , B2C, etc
  @kyc-fill-in_C02.05_phone_number_not_supported
  Scenario: Service not available for the phone number
    Given that the service is not available for all phone numbers commercialized by the operator
    And a valid phone number, identified by the token or provided in the request body, for which the service is not applicable
    When the request "kycFillin" is sent
    Then the response status code is 422
    And the response property "$.status" is 422
    And the response property "$.code" is "SERVICE_NOT_APPLICABLE"
    And the response property "$.message" contains a user friendly text
