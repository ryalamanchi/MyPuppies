Feature: Adopting two puppies



  Scenario Outline: Adopting one puppy
    Given I am on the puppy adoption site
    When I click the View Details button
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    And I select the second View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "<Name>" "<address>" "<email>" and "<paytype>"
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  Examples:
    |Name|address|email|paytype|
    |Cheezy|123 Main St|cheezy@example.com|Credit card|