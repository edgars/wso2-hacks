# Sample Interacting with Salesforce

This example shows how to make interactions with Salesforce using WSO2 ESB 

##Important Note

In that example, you have to configure your Secure Vault in WSO2 ESB, in order to get the user password from your Salesforce account.

```
        <inSequence>
            <salesforce.query configKey="salesforce_init">
                <batchSize>200</batchSize>
                <queryString>SELECT Contact.FirstName FROM Contact</queryString>
            </salesforce.query>
            <property description="SetJSON" name="messageType" scope="axis2" type="STRING" value="application/json"/>
            <respond description="Back"/>
        </inSequence>

```

Please take a look on this link for more information regarding the configurations on Secure Vault: 

https://docs.wso2.com/display/ESB490/Working+with+Passwords



