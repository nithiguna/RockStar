@DeleteBatchesCheckBox

Feature: Delete multiple batches with check box 

  Background: Admin is on the batch page
    Given The User is on the login page
    When The User enters the valid username and password "LoginCredentials"

  @BatchPageNavigation @BatchTC_001
  Scenario: Validate single row delete with checkbox	
  Given Admin is on the batch page	
  When Admin clicks on the delete icon under the Manage batch header	
  Then The respective row in the table should be deleted
  
  @BatchPageNavigation @BatchTC_001
  Scenario:
Validate multiple row delete with checkbox	Admin is on the batch page	Admin clicks on the delete icon under the Manage batch header	The respective row in the table should be deleted
Delete multiple batches with check box