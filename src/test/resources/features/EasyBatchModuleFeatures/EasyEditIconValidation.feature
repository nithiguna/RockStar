@EditIconValidation
Feature: Edit icon Validation

  Background: Admin is on the batch page
    Given The User is on the login page
    When The User enters the valid username and password "LoginCredentials"

  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate Edit icon feature in any row	
  Given Admin is on the Batch page	
  When Admin clicks the edit icon	
  Then Admin should see the Batch details pop up window	

 @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate program name value is disabled to edit	
  Given Admin is on the Batch page	
  When Admin clicks the edit icon	
  Then Admin should see Program name value field is disabled for editing	

 @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate batch name value is disabled to edit	
  Given Admin is on the Batch page	
  When Admin clicks the edit icon	
  Then Admin should see batch name value field is disabled for editing	
  
  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate editing description and No. of classes fields with invalid data in the pop up	
  Given Admin is on the Batch Details Page	
  When Admin Updates any fields with invalid data and click save button	
  Then Admin should get a error message under the respective field
  
  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate save button in Batch details pop up	
  Given Admin is on the Batch Details Page	
  When Admin enters the valid data to all the mandatory fields and click save button 
  Then Admin should get a succesesful message for editing the batch
  
  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate cancel button in Batch details pop up	
  Given Admin is on the Batch Details Page	
  When Admin enters the valid data to all the mandatory fields and click cancel button 
  Then Admin can see the batch details popup closes without editing the batch
  
  