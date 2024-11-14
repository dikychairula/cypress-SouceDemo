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

