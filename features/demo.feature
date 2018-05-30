Feature: Demo Feature

    Scenario: Open SignUp Page
        When I am on Appimation home page
        Then I open Try now
        When I fill Try now
        Then I close Try now

    Scenario: Open SignIn View
        Given I am on Appimation home page
        When I open Sign in
        Then I fill Sign in view
        When I try to sign in
        Then I receive an error message
