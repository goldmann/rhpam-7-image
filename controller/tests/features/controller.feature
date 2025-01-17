@rhpam-7/rhpam76-controller
Feature: RHPAM Standalone Controller tests

  Scenario: Test REST API is secure
    When container is ready
    Then check that page is served
      | property             | value               |
      | port                 | 8080                |
      | path                 | /management/servers |
      | expected_status_code | 401                 |
