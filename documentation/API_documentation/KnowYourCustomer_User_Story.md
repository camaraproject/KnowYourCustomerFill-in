**User Story: KYC Fill-In - Get identity information of customer**
<br>

| **Item** | **Details** |
| ---- | ------- |
| ***Summary*** | As an application developer belonging to an enterprise, I want to retrieve (using my application server/backend service) the identity information of a user by requesting the MNO to query information stored in its customer database. Information returned by the MNO are given name, family name, street address, city, country, region, postal code, birthdate, email address, etc.   |
| ***Roles, Actors and Scope*** | **Roles:** Customer:User<br> **Actors:** Mobile Network Operators (MNO), hyperscalers, application developers, enterprise. <br> **Scope:** Any phone line (not limited to 4G, 5G) |
| ***Pre-conditions*** |The preconditions are listed below:<br><ol><li>The Customer:User has provided mandatory information of their identity</li><li>Application developer has onboarded to MNO API</li><li>Application developer has API credentials</li><li>Privacy legal base requirement has been solved (Customer privacy) </li></ol>|
| ***Activities/Steps*** | **Starts when:** The third party/enterprise customer application server makes a request to the KYC service (API) to retrieve user identity information.<br>**Ends when:** The MNO service returns the identity information stored in its customer database.<br> |
| ***Post-conditions*** | The application developer uses this customer data to follow-up the enterprise process |
| ***Exceptions*** | Several exceptions might occur during the KYC Fill-in API operations:<br><ul><li>Unauthorized: Not valid credentials (e.g. use of already expired access token).</li><li>Not Found: The number provided is not managed by the MNO</li><li>Invalid input: Not all mandatory  input data to invoke operation (e.g. phone number).</li></ul>|


