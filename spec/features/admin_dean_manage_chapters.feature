Feature: Manage Chapters
  An admin can create and modify chapters
  A dean of a chapter can modify the chapter

  Scenario: An admin creates a chapter
    Given I am logged in as an admin
    When I create a new chapter
    And I go to the chapters index
    Then I should see this new chapter

  Scenario: An admin tries to create an invalid chapter
    Given I am logged in as an admin
    When I go to create a new chapter
    But I just submit the form
    Then I should see the new chapter form with errors

  Scenario: A dean edits a chapter
    Given I am logged in as a dean
    When I edit a chapter
    Then I should see the updated chapter

  Scenario: A trustee attempts to edit a chapter
    Given I am logged in as a trustee
    When I attempt to edit a chapter
    Then I should see a permissions error
