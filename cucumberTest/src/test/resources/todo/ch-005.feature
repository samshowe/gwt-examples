Feature: Remove multiple tasks from the list
  Scenario Outline: As a user, I want to remove multiple tasks from my ToDo list at one time.
    Given I am on the ToDo list page
    And I have my example ToDo list
    And the task "<task1>" is on my ToDo list
    When I put a check box next to my task "<task1>" to remove
    And I click the Remove button
    Then  the task "<task1>" will be removed from my ToDo list
    And the task "<task2>" is on my ToDo list
    When I put a check box next to my task "<task2>" to remove
    And I click the Remove button
    Then the task "<task2>" will be removed from my ToDo list

    Examples:
      | task1 | task2 |
      | Go to the store| Go to the store again |