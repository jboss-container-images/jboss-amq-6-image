@jboss-amq-6/amq62
Feature: Standalone AMQ image tests

  Scenario: check that container is started correctly
    When container is ready
    Then container log should contain INFO | Apache ActiveMQ 5.11.0.redhat-621216
    And check that port 61616 is open

  @ci
  Scenario: Check that the jboss-amq-6/amq image contains 5 layers
    Given image is built
     Then image should contain 5 layers
