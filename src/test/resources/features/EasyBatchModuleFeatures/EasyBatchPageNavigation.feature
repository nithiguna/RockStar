@EasyBatchPageNavigation
Feature: Batch Page Navigation Functionality

  Background: Admin is on the Dashboard page after Login
  Given The Admin is on the login page of the LMS Portal
   When The Admin enters the valid username and password

  @BatchPageNavigation @BatchTC_001
  Scenario: Verify Admin Navigate to Batch page successfully
    Given Admin is on the Dashboard Page 
    When Admin Clicks on the Batch menu from the header
   Then Admin should be in the Manage Batch Page
