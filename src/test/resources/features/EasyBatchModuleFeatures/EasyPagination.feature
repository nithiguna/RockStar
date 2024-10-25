@EasyPagination
Feature: Pagination Validation

  Background: Admin is on the batch page
    #Given The User is on the login page
    #When The User enters the valid username and password "LoginCredentials"

  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate next page link	
  Given Admin is on the batch page	
  When Admin clicks next page link on the data table	
  Then Admin should see the Next enabled link
  
  @BatchPageValidation @BatchvalidTC_001
  Scenario: Validate last page link	
  Given Admin is on the batch page	
  When Admin clicks last page link on the data table	
  Then Admin should see the last page link with next page link disabled on the table 

@BatchPageValidation @BatchvalidTC_001
  Scenario: Validate the backward page link	
  Given Admin is on the batch page	
  When Admin clicks backward page link on the data table	
  Then Admin should see the previous page on the table

@BatchPageValidation @BatchvalidTC_001
  Scenario: Validate the first page link	
  Given Admin is on the batch page	
  When Admin clicks first page link on the data table	
  Then Admin should see the very first page on the data table