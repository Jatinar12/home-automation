Feature: Rent Property Detail Page

    As a tester, I want to test the resale property details page of the homebazaar application

    Background:
        Given I am on the "rentPDP" page

    # @regression @rentPDPPage-01 @automated
    # Scenario Outline: Rent Property Detail Page - navigation from rent PDP Page to <city> search page
    #     Then I should see "breadcrumbs" present on pdp page
    #     When I click on "<city>" on "breadcrumb"
    #     Then I should navigate to "particular" page

    #     Examples:
    #         | city           |
    #         | Bhagwati Group |
    #         | Ghansoli       |
    #         | Navi Mumbai    |
    #         | Mumbai         |
    #         | Home           |

    # @regression @rentPDPPage-02 @automated
    # Scenario: Rent Property Detail Page - verification of property heading
    #     Then I should see the "project name" in pdp page heading
    #     When I hover over the "project name" in the pdp page heading
    #     And I should see the "property rating" in pdp page heading
    #     And I should see the "configuration" in pdp page heading
    #     And I should see the "starting price" in pdp page heading
    #     And I should see the "carpet area" in pdp page heading


    # @regression @rentPDPPage-03 @automated
    # Scenario: Rent Property Detail Page - checking the functionality of shortlist property icon
    #     When I click on the "shortlist property icon"
    #     Then I should see the red "shortlist property icon"

    # Scenario: Rent Property Detail Page - checking the functionality of share icon
    #     When I click on the "share icon"
    #     Then I should see the "social media icon modal" on the page

    # @regression @rentPDPPage-04 @automated
    # Scenario: Resale Property Detail Page - functionality of items on the hero image
    #     Then I should see the "hero image" on the "image"
    #     And I should see the "livability rating text" on the "image"
    #     When I hover over "livability rating text" on the image

    # @regression @rentPDPPage-06 @automated
    # Scenario: Rent Property Detail Page - functionality of images button which navigate to arrange site visit form on the hero image
    #     Then I should see the "hero image" on the "image"
    #     And I click on the "rent image text" on the "hero image"
    #     Then I should see the "image modal" on the "page"
    #     When I click on the "arrange site visit button" on the "image modal"
    #     Then I fill "Test Data" on the "name" input field
    #     And I fill "random mobile number" on the "mobile number" input field
    #     And I fill "random email" on the "email" input field
    #     And I select "first date" from "date" field on the modal
    #     And I select "02:00 pm" from "time" field on the modal
    #     And I check the "accept the term checkbox" on the form
    #     And I check the "homeloans checkbox" on the form
    # #And I click on the "arrange visit button" on the "image modal"
    # # Then I should see the "OTP modal" on the "page"

    # @regression @resalePDPPage-08 @automated
    # Scenario: Rent Property Detail Page - checking the functionality of "Read More" button on the introduction section
    #     When I click on the "about property" tab on the header
    #     And I click on the "read more button" on the "introduction section"
    #     Then I should see the "complete description" on the "introduction section"
    #     When I click on the "read less button" on the "introduction section"
    #     Then I should not see the "complete description" on the "introduction section"


    # @regression @resalePDPPage-10 @automated
    # Scenario: Rent Property Detail Page - checking the functionality of View Room Sizes button on floor map section
    #     When I click on the "floor plans & room sizing" tab on the header
    #     And I click on "View Room Sizes" button on the "floor map section"
    #     Then I should see the "view room sizes modal" on the "page"
    #     When I click on the "close button" on the "page"
    #     Then I should not see the "view room sizes modal" on the "page"


    # @regression @resalePDPPage-11 @automated
    # Scenario Outline: Rent Property Detail Page - checking the functionality of Map Section for <tab> tab
    #     When I click on the "locality" tab on the header
    #     Then I should see the "map" on the "map section"
    #     When I click on "<tab>" button on the "map section"
    

    #     Examples:
    #         | tab           |
    #         | Commute       |
    #         | Entertainment |
    #         | Essentials    |

    # @regression @resalePDPPage-18 @automated
    # Scenario:Resale Property Detail Page - About Builder Section
    #     And I click on the "about builder" tab on the header
    #     And I click on the "readmore button" on the "about builder section"
    #     Then I should see the "completedescription" on the "about builder section"
    #     When I click on the "readless button" on the "about builder section"
    #     Then I should not see the "completedescription" on the "about builder section"

    # @regression @resalePDPPage-17 @automated
    # Scenario Outline: Rent Property Detail Page- FAQ section for <FAQquestion>
    #     When I click on the "FAQ" tab on the header
    #     And I click on the "Read More" button on FAQ section
    #     When I click on the "<FAQquestion>" tab on the page
    #     Then "<FAQquestion>" tab should be open on the page
    #     And I should see the answer on the "<FAQquestion>" tab on the page
    #     And I click on the "<FAQquestion>" again
    #     And "<FAQquestion>" tab should be closed

    #     Examples:
    #         | FAQquestion                                         |
    #         | Is Bhagwati Eleganza A Good For Investment?         |
    #         | How many floors are there in Bhagwati Eleganza?     |
    #         | What is the address of Bhagwati Eleganza?           |
    #         | What is  Bhagwati Eleganza 3 BHK Price?             |
    #         | What is the Possession Status of Bhagwati Eleganza? |
    #         | How to check Bhagwati Eleganza Sample Flat?         |

    # @automated @builderPage-24 @automated
    # Scenario: Resale Property Detail Page - Get Quote Form
    #     When I click on the "about builder" tab on the header
    #     When I fill "Test Data" on the "name" input field
    #     And I fill "random mobile number" on the "mobile number" input field
    #     And I fill "random email" on the "email" input field
    #   # And I click on the "get best quote tab" on the "popup form"
    #   # Then I should see the "OTP modal" on the "page"


    # @automated @builderPage-25 @automated
    # Scenario: Resale Property Detail Page - Get Quote Form to Arrange Site Visit Form
    #     When I click on the "about builder" tab on the header
    #     When I click on the "arrange sites button" on the "image modal"
    #     Then  I should see the "schdedule tour form" on the "page"
    #     When I fill "Test Data" on the "name" input field
    #     And I fill "random mobile number" on the "mobile number" input field
    #     And I fill "random email" on the "email" input field
    #     And I select "first date" from "date" field on the modal
    #     And I select "11:00 am" from "time" field on the modal
    #     And I check the "I accept Terms and Conditions" on the form
    #    # And I click on the "arrange visit button" on the "image modal"
    #     # Then I should see the "OTP modal" on the "page"
