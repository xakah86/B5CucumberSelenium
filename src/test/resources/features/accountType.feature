Feature: Account Type

  @Rerun
  Scenario: Teacher User
    When The user logs in using "eurotech@gmail.com" and "Test12345!"
    Then The welcome message contains "teacher"
  @Rerun
  Scenario: Student User
    When The user logs in using "studentB5@ets.com" and "studentB5"
    Then The welcome message contains "student"
  @Rerun
  Scenario: Developer User
    When The user logs in using "developerB5@ets.com" and "developerB5"
    Then The welcome message contains "developer"

  @wip
  Scenario Outline: Different User Type
    Given The user is on the login page
    When The user logs in using "<userType>" and "<password>"
    Then The welcome message contains "<name>"

    Examples:
      | userType            | password    | name      |
      | eurotech@gmail.com  | Test12345!  | Teacher   |
      | studentB5@ets.com   | studentB5   | student   |
      | developerB5@ets.com | developerB5 | developer |
      | isa@gmail.com       | 2828isa     | isa       |
      | ensar1905@gmail.com | Gs1905      | Ensar1905 |