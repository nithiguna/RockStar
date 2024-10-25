@EasySearchTxtBoxValidation
Feature: LogOut of the application from the batch page

  Background: Admin is on the batch page
    Given The User is on the login page
    When The User enters the valid username and password "LoginCredentials"

  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate logout option in the header is visible and enabled from the batch page
  Given Admin is on the batch page	
  When Admin clicks on the logout button	
  Then Admin should see the Login screen Page			
  
  