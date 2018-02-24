Feature: Create articles
  As a blogger
  In order to share my content with everyone
  I would like to be able to create Articles

  Background:
    Given I visit the site
    When I click "new"

  Scenario: Successfully create an article [Happy Path]
    When I fill in "title" with "Learning Rails 5"
    And I fill in "content" with "Excited about learning a new framework"
    And I click "Create Article"
    Then I should be on "Learning Rails 5"
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

  Scenario: Blogger doesn't enter a title for the article [Sad Path]
    When I fill in "content" with "Excited about learning a new framework"
    And I click "Create Article"
    Then I should see "Title can't be blank"
