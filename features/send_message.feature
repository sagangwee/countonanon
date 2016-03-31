Feature: Send a message to a buddy

    As a user 
    I want to be able to send messages to another user 
    So that I can know their thoughts and feelings

Background:
  
    Given the following Users exist:
    
    | username     | email              | password    |
    | user1        | user1@berkeley.edu | password1   |
    | user2        | user2@berkeley.edu | password2   |

    And I am logged in as user1@berkeley.edu with password1
    And I am chatting with user2

Scenario: Send a message to user2
    When I fill in "message_body" with "Hi user2" 
    And I press "Send"
    Then I should see "Hi user2"

Scenario: Send an empty message to user2
    When I fill in "message_body" with ""
    And I press "Send"
    Then I should see "Please fill out this field"
    


 
