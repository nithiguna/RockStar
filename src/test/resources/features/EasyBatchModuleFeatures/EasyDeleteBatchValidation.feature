@EasyDeleteBatchValidation
Feature: Delete batch validation

  Background: Admin is on the batch page
   Given Admin is on the Dashboard Page after Login
  # When The Admin enters the valid username and password

  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate delete Icon on any row	
 #Given Admin is on the Dashboard Page	
  When Admin clicks the delete Icon on any row	
  Then Admin should see the confirm alert box with yes and no button
  
  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate yes button on the confirm alert box	
  Given Admin is on the batch confirm popup page	
  When Admin clicks on the delete icon and click yes buttton	
  Then Admin should see the successfull message and the batch should be deleted	
  
  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate no button on the confirm alert box	
  Given Admin is on the batch confirm popup page	
  When Admin clicks on the delete icon and click no buttton	
  Then Admin should see the alert box closed and the batch is not deleted	
  
  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate close Icon on the alert box	
  Given Admin is on the batch confirm popup page	
  When Admin clicks on the close icon	
  Then Admin should see the alert box closed 	