@managing_channels @ui
Feature: Editing shop billing data on channel
    In order to have proper shop billing data on invoices
    As an Administrator
    I want to be able to edit shop billing data on a channel

    Background:
        Given the store operates on a channel named "Web Channel"
        And the store ships to "United States"
        And I am logged in as an administrator

    Scenario: Editing shop billing data on channel
        When I want to modify a channel "Web Channel"
        And I specify company as "Ragnarok"
        And I specify tax ID as "1100110011"
        And I specify shop billing address as "Pacific Coast Hwy", "90806" "Los Angeles", "United States"
        And I save my changes
        Then I should be notified that it has been successfully edited
        And this channel company should be "Ragnarok"
        And this channel tax ID should be "1100110011"
        And this channel shop billing address should be "Pacific Coast Hwy", "90806" "Los Angeles", "United States"
