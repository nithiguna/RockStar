@EasySearchTxtBoxValidation
Feature: Search Text box validation

  Background: Admin is on the batch page
    Given The User is on the login page
    When The User enters the valid username and password "LoginCredentials"

  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate search box functionality	
  Given Admin is on the batch page	
  When Admin enters the batch name in the serach text box	
  Then Admin should see the filtered batches in the data table	
  
  
				
				