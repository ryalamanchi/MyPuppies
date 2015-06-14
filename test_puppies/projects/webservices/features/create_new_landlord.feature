Feature: Agent

  Scenario:Create new landloard
    When I ask for <firstname>, <lastname>, <trusted> to create a new landloard
    Then I should get the following information:
      | firstname | lastname     | trusted | apartments |
      | Alex      | Fruzenshlein | true    | 0          |