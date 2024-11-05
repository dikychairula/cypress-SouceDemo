Feature: Login Feature

    Scenario Outline: Login with valid credential
        Given User on the login page
        When User enter valid uname <username>
        And User enter valid passw <password>
        And User click "login" button
        Then User should navigate to Swag Labs Homepage

    Examples:
      | username              | password        |
      | "standard_user"       | "secret_sauce"  |
      | "locked_out_user"     | "secret_sauce"  |
      | "problem_user"        | "secret_sauce"  |
      | "performance_glitch_user" | "secret_sauce" |
      | "error_user"          | "secret_sauce"  |
      | "visual_user"         | "secret_sauce"  |


#     Scenario: Login with valid username and invalid password
#         Given User on the login page
#         When User enter valid <username>
#         And User enter invalid <password>
#         And User click “login” button
#         Then User should not navigate to Swag Labs Hompage

# |username|password|result|
# |"standard_user"|"secret_ketchup"|
# |"standard_user"|" "|
# |"locked_out_user"|"secret_ketchup"|
# |"locked_out_user"|" "|
# |"problem_user"|"secret_ketchup"|
# |"problem_user"|" "|
# |"performance_glitch_user"|"secret_ketchup"|
# |"performance_glitch_user"|" "|

#     Scenario: Login with invalid username and valid password
#         Given User on the login page
#         When User enter invalid <username>
#         And User enter valid <password>
#         And User click “login” button
#         Then User should not navigate to Swag Labs Hompage

# |username|password|
# |"standar"|"secret_sauce"|
# |" "|"secret_sauce"|


#     Scenario: Login with invalid username and invalid password
#         Given User on the login page
#         When User enter valid <username>
#         And User enter invalid <password>
#         And User click “login” button
#         Then User should not navigate to Swag Labs Hompage

# |username|password|
# |"standar_admin"|"secret_ketchup"|
# |" "|" "|

#     Scenario: Login with empty username and empty password
#         Given User on the login page
#         When User enter valid <username>
#         And User enter invalid <password>
#         And User click “login” button
#         Then User should not navigate to Swag Labs Hompage

# |username|password|
# |""|""|

#     Scenario: Login with direct pass to URL inventory
#         Given User on the login page
#         When User direct pass to URL inventory
#         Then User should not navigate to Swag Labs Hompage
#         And User still in Login Page
