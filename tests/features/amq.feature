@jboss-amq-6/amq63
Feature: Standalone AMQ image tests

  @ci
  Scenario: Check that the jboss-amq-6/amq image contains 5 layers
    Given image is built
     Then image should contain 5 layers
