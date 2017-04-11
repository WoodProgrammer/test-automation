Feature: Demo tests

  Scenario: Visit kloia.com homepage
    Given visit "http://kloia.com"
    Then verify page title is "DevOps Consultancy"

  Scenario: Visit google.com homepage and search for DevOps
    Given visit "http://google.com"
    When type "DevOps" into search bar
    Then click search button
    And wait "3" seconds

  Scenario Outline: Visit google.com homepage and search values
    Given visit "http://google.com"
    When type "<search_item>" into search bar
    Then click search button
    And wait "2" seconds
    Examples:
      | search_item     |
      | cucumber        |
      | test automation |
      | Docker          |

  Scenario: Visit Contact Us form
    Given visit "http://kloia.com/#contacts"