Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I open Try now
        When I enter "email@gmail.com", "password", "project" in try now view
        Then I close Try now

    Scenario: Open SignIn View
        Given I am on Appimation home page
        When I open Sign in
        When I enter "email@gmail.com", "password" in sign up view
        Then I try to sign in
        Then I receive an error message