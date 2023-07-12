Feature: Rent A Property Page

    As a tester, I want to the test the rent a property page of the homebazaar application

    @regression @sanity @RentAPropertyPage-01 @automated
    Scenario:Rent A Property Page - "Rental Property Search Got You Down?" section
        Given I am on the "rentaproperty" page
        Then I should see the "header" on the "page"
        And I should see the "rental property search" on the "page"
        And I should see the "image" along with the heading

    @regression @sanity @RentAPropertyPage-02 @automated
    Scenario: Rent A Property Page - "Rent A Property Page" section
        Given I am on the "rentaproperty" page
        Then I should see the "rent a property" on the "page section"
        And I should see "now renting made simple heading" on rent a property section
        And I should see the "subheading" on the "rent a property section"
        And I should see image,"Search Properties" and "descriptions" on the "rent a property section"
        And I should see image,"Find a Property" and "descriptions" on the "rent a property section"
        And I should see image,"Schedule Tours" and "descriptions" on the "rent a property section"
        And I should see image,"Possession" and "descriptions" on the "rent a property section"
        And I should see image,"Sign an Agreement" and "descriptions" on the "rent a property section"
        And I should see image,"Negotiation" and "descriptions" on the "rent a property section"
        And I should see image,"pay rent online" heading and description
        And I should see image,"trust & safety" heading and description

    # @regression @sanity @RentAPropertyPage-03 @automated
    Scenario: Rent A Property Page - "Why choose HomeBazaar.com" section
        Given I am on the "rentaproperty" page
        Then I should see the "why choose homebazaar.com" on the "page section"
        And I should see the "subHeading" on the "why choose homebazaar section"
        And I should see image and "No Brokerage" on the "why choose homebazaar"
        And I should see image and "Verified Listings" on the "why choose homebazaar" 
        And I should see image and "Instant Possession" on the "why choose homebazaar" 
        And I should see image and "End-to-End Customer Assistance" on the "why choose homebazaar"
        And I should see image and "Legal Assistance" on the "why choose homebazaar"

    @regression @sanity @RentAPropertyPage-04 @automated
    Scenario: Rent A Property Page - "Unique Offerings at HomeBazaar.com" section
        Given I am on the "rentaproperty" page
        And I should see the "heading" on the "unique offering section"
        And I should see image,"Street View" and "type" on the "unique offering section"
        And I should see image,"360 View" and "type" on the "unique offering section"
        And I should see image,"Photographs" and "type" on the "unique offering section"
        And I should see image,"Site Visit Assistance" and "type" on the "unique offering section"
        And I should see image,"Tour Via Video Chat" and "type" on the "unique offering section"
