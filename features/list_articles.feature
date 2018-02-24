Feature: List articles on the landing page
  As a visitor,
  when I visit the application's landing page,
  I would like to see a list of articles

  Background:
    Given the following articles exist
      | title                | content                          | author |
      | A breaking news item | Some really breaking action      | Thomas |
      | Learn Rails 5        | Build awesome rails applications | Faraz  |

  Scenario: Viewing list of articles on application's landing page
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Written by Thomas"
    And I should see "at 2018-02-24"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"
    And I should see "by Faraz at 2018-02-24"
