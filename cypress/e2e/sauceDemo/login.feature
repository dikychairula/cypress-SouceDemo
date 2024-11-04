Feature: Login
Background: Given already on website

    Scenario: Login with valid credential
        Given User on the login page
        When User enter valid <username>
        And User enter valid <password>
        And User click “login” button
        Then User should navigate to Swag Labs Hompage

|username|password|result|
|"standard_user"|"secret_sauce"|"succesfull Login"|
|"locked_out_user"|"secret_sauce"|"fail Login"|
|problem_user|"secret_sauce"|" "|
|performance_glitch_user|"secret_sauce"|" "|
|error_user|"secret_sauce"|" "|
|visual_user|"secret_sauce"|" "|

Feature: Login
Background: Given already on website

    Scenario: Login with valid username and invalid password
        Given User on the login page
        When User enter valid <username>
        And User enter invalid <password>
        And User click “login” button
        Then User should navigate to Swag Labs Hompage

|username|password|result|
|"standard_user"|"secret_ketchup"|"unsuccessful Login"|
|"standard_user"|" "|"unsuccessful Login"|
|"locked_out_user"|"secret_ketchup"|"unsuccessful Login"|
|"locked_out_user"|" "|"unsuccessful Login"|
|"problem_user"|"secret_ketchup"|"unsuccessful Login"|
|"problem_user"|" "|"unsuccessful Login"|
|"performance_glitch_user"|"secret_ketchup"|"unsuccessful Login"|
|"performance_glitch_user"|" "|"unsuccessful Login"|


