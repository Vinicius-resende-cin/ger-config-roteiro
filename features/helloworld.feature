Show a message saying "Hello World" on the screen
  Scenario: Display Hello World
    Given I open the application
    When I navigate to the home screen
    Then I should see "Hello World" displayed on the screen

  Scenario: Dismiss Hello World message
    Given I see "Hello World" on the screen
    When I press the dismiss button
    Then the "Hello World" message should be dismissed
