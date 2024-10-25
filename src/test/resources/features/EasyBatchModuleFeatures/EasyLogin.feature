@EasyLogin
Feature: LMS Portal Login Functionality

  @LoginCredentials @LoginTC_001
  Scenario: Validate the login with valid credentials
   Given The Admin is on the login page of the LMS Portal
    When The Admin enters the valid username and password
    Then The Admin get navigated to home page and successfully logged in
