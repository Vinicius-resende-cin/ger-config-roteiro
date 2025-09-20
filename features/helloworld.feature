Show a message saying "Hello World" on the screen
  Scenario: Display Hello World
    Given I open the application
    When I navigate to the home screen
    Then I should see "Hello World" displayed on the screen

  Scenario: Dismiss Hello World message
    Given I see "Hello World" on the screen
    When I press the dismiss button
    Then the "Hello World" message should be dismissed

  Scenario: Fail to display Hello World if not on home screen
    Given I open the application
    When I navigate not to the home screen
    Then I should not see "Hello World" displayed on the screen

  Scenario: Fail to dismiss Hello World if not visible
    Given I am on a different screen
    When I press the dismiss button
    Then I should see an error message "No message to dismiss"
    Then "Hello World" should still not be displayed on the screen