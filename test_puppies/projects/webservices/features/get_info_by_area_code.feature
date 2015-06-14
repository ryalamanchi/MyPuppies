Feature:ValidatingtheUSAZipCodeInformationWebService

  Background:
    When I ask the service for the supported operations

  Scenario: Verify it contains the expected operations
#    When I ask the service for the supported operations
    Then "get_info_by_area_code" should be supported
    And "get_info_by_city" should be supported
    And "get_info_by_state" should be supported
    And "get_info_by_zip" should be supported

  @test
  Scenario:Getting the zip code information by zip code
    When I ask for the zip code information for "44114"
    Then I should get the following information:
      | city      | state | area_code | time_zone |
      | Cleveland | OH    | 216       | E         |


#  Scenario Outline: Get payment options
#    When