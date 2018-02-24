Feature: User can comment on article
As a reader
in order to be able to express my opinions
I would like to be able to comment on an article

Background:
  Given the following articles exist
  | title                | content                          |
  | A breaking news item | Some really breaking action      |
  | Learn Rails 5        | Build awesome rails applications |

Scenario: User adds a comment
  Given I visit the site
  When I click 'Learn Rails 5'
  And I fill in 'Comment' with 'This is awesome'
  And I fill in 'Email' with 'jf@ca.com'
  And I click 'Create Comment'
  Then I should be on 'Learn Rails 5' page
  And I should see 'jf@ca.com'
