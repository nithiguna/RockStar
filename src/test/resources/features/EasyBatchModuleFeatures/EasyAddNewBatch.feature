
@EasyAddNewBatch
Feature: Add New Batch 

  Background: Admin is on the Batch page
    Given The User is on the login page
    When The User enters the valid username and password "LoginCredentials"

  @BatchPageNavigation @BatchTC_001
  Scenario: Verify sub menu displayed in batch menu bar	
  Given Admin is on batch page
  When Admin clicks "Batch" on the navigation bar	
  Then Admin should see sub menu in menu bar as "Add New Batch"
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate Admin able to click on the Add new Batch Option	
  Given Admin is on the Dashboard page	
  When Admin clicks on "Add New batch" under the "batch" menu bar	
  Then Admin should see the Batch Details pop up window	

  