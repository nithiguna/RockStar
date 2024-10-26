@EasyAddNewBatchPopUP
Feature: Add New Batch details pop up 

  Background: Admin is on the Add new batch pop up
    Given The User is on the login page
    When The User enters the valid username and password "LoginCredentials"

  @BatchPageNavigation @BatchTC_001
  Scenario: Validate all the fields exist in pop up 
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin checks all the fields are enabled
  Then The pop up should include the fields Batch Name,Number of classes and Description as text box,Program Name as drop down Status as radio button	
  
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate batchname prefix selected program name	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin selects program name present in the dropdown	
  Then Admin should see selected program name in the batch name prefix box	
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate batch name suffix box should accept only numbers	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin enters alphabets in batch name suffix box	
  Then Admin should get error message below the text box of respective field
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate batch name prefix box is not editable	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin enters alphabets in batch name prefix box	
  Then Admin should see empty text box	
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate input data only for mandatory fields	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin enters the data only to the mandatory fiields and clicks save button	
  Then Admin should get a successful message	
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate input data missing for mandatory fields	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin leaves blank one of the mandatory fields	
  Then Admin should get a error message on the respective mandatory field	
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate save button in Batch details pop up	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin enters the valid data to all the mandatory fields and click save button 	
  Then Admin should get a succesesful message
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate cancel button in Batch details pop up	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin enters the valid data to all the mandatory fields and click cancel button 	
  Then Admin can see the batch details popup closes without creating any batch	
  
  @BatchPageNavigation @BatchTC_001
  Scenario: Validate close icon on the batch details pop up	
  Given Admin is on the Batch Details Pop Up WIndow	
  When Admin clicks on the close icon	
  Then Batch details pop up closes	