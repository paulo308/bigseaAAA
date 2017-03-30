Feature: Test authentication functionalities

        As AAA Manager, I have authentication features that allows to
        manipulate user information.

        Scenario: Create user
                Given I have user information and application identification
                When I user is not repeated
                Then User is successfully created
        
        Scenario: Create user
                Given I have user information and application identification
                When I user is repeated
                Then User is not created and user string is returned
        
        Scenario: Create user
                Given I have user information and application identification
                When I user is admin
                Then User is not created and admin string is returned

        Scenario: Access application
                Given I have username and password
                When I access application
                Then I get user information 

        Scenario: Get token
                Given I have valid application ID and user information
                When I consult token
                Then I get valid token

        Scenario: Verify token
                Given I have valid application ID and token
                When I verify token
                Then I get corresponding username

        Scenario: Insert token
                Given I have valid application ID, user information and token
                When I insert token
                Then I get database response
