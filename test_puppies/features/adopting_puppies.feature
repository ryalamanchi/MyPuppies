Feature: Adopting puppies

  Background:
    Given I am on the puppy adoption site
    When I click the View Details button

  Scenario Outline: Adopting one puppy
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter "<Name>" "<address>" "<email>" and "<paytype>"
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

Examples:
    |Name|address|email|paytype|
    |Cheezy|123 Main St|cheezy@example.com|Credit card|

  @test
  Scenario Outline: Adopting two puppy
    And I click the Adopt Me button
    And I click the Adopt Another Puppy button
    And I select the second View Details button
    And I click the Adopt Me button
    And I should see first <firstpuppyname> and <firstprice> for line item 1
    And I should see second <secondpuppyname> and <secondprice> for line item 2
    And I should see <totalprice> as the cart total
    And I click the Complete the Adoption button
    And I enter "<Name>" "<address>" "<email>" and "<paytype>"
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

  Examples:
    | Name| address|email| paytype| firstpuppyname | firstprice| secondpuppyname | secondprice| totalprice |
    |Cheezy|123 Main St|cheezy@example.com|Credit card|Brook|$34.95|Hanna          | $22.99         |$57.94       |