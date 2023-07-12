Feature: Builder Page

    As a tester, I want to test the builder page of the homebazaar application

    # calculate emi functionality not working, right the code for that
    Background:
        Given I am on the "builder" page

    # @automated @builderPage-01 @automated
    Scenario:Builder Page - checking the visibility of the builder description section
        Then I should see the "breadcrumbs" on the "page"
        And I should see the "builder description section" on the "page"
        And I should see the "builder image" on the "builder description section"
        And I should see the "builder name" on the "builder description section"
        And I should see the "builder year" on the "builder description section"
        And I should see the "builder description" on the "builder description section"
        And I should see the "ready possession with count" on the "builder description section"
        And I should see the "under construction with count" on the "builder description section"
        And I should see the "total project with count" on the "builder description section"

    @automated @builderPage-02 @automated
    Scenario:Builder Page - Instant Call Back Form
        Then I should see the "request info form" on the "page"
        When I fill "Test Data" on the "name" input field
        And I fill "random email" on the "email" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I select "Lodha Enchante" from the "select project field"
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
        And I click on the "get instant call back button" on the "form"
       Then I should see the "OTP modal" on the "page"

    @automated @builderPage-03 @automated
    Scenario:Builder Page - Instant Call Back Form to Arrange Site Visit Form
        When I click on the "arrange site visit" on the "form"
        Then I should see the "schdedule tour form" on the "page"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I select "first date" from "date" field on the modal
        And I select "12:00 pm" from "time" field on the modal
        And I select "Lodha Enchante" from the "select project field"
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
        And I click on the "submit button" on the "form"
        Then I should see the "OTP modal" on the "page"

    @automated @builderPage-04 @automated
    Scenario:Builder Page - checking the count of the property should be greater than zero
        Then I should see the "count of the property" should be greater than zero

    @automated @builderPage-05 @automated
    Scenario: Builder Page - checking the visibility and functionality of the 360 view button on the image
        When I click on the "360 view button" on the "property image"
        Then I should see the "360 modal" on the "page"

    @automated @builderPage-06 @automated
    Scenario: Builder Page - checking the visibility and functionality of the video button on the image
        When I click on the "video button" on the "property image"
        Then I should see the "video modal" on the "page"

    @automated @builderPage-07 @automated
    Scenario: Builder Page - checking the Visibility of the heart icon and rating on the property image
        When I click on the "heart icon" on the "property image"
        Then I should see the red "heart icon"

    @automated @builderPage-08 @automated
    Scenario: Builder Page - checking the visibility of items on the property card
        Then I should see the "property name" on the "property card"
        And I should see the "builder name" on the "property card"
        And I should see the "location of the property" on the "property card"
        # And I should see the "property price" on the "property card"
        And I should see the "property size" on the "property card"
        And I should see the "property area" on the "property card"
        And I should see the "property status" on the "property card"
        And I should see the "calculate emi text" on the "property card"
        And I should see the "investment text along with rating" on the "property card"
        When I click on the "view details button" on the "property card"
        Then I should navigated to the "property detail page" of that property

    @automated @builderPage-9 @automated
    Scenario: Builder Page - Instant Call Back Form
        When I click on the "instant call back button" on the "property card"
        Then I should see the "schedule tour modal" on the "page"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
    And I click on the "instant call button" on the "instant call back modal"
    Then I should see the "OTP modal" on the "page"

    @automated @builderPage-10 @automated
    Scenario: Builder Page - Instant Call Back Form to Arrange Site Visit Form
        When I click on the "instant call back button" on the "property card"
        And I click on the "arrange site tab" on the "instant call back modal"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I select "first date" from "date" field on the modal
        And I select "12:00 pm" from "time" field on the modal
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
    And I click on the "arrange visit button" on the "modal"
    Then I should see the "OTP modal" on the "page"


    @automated @builderPage-11 @automated
    Scenario: Builder Page - Instant Call Back Form
        When I click on the "instant call back button" on the "property card"
        Then I should see the "schedule tour modal" on the "page"
        When I click on the "close button" on the "schedule tour modal"
        Then I should not see the "schedule tour modal" on the "page"



    @automated @builderPage-12 @automated
    Scenario Outline: Builder Page - checking the opening and closing of "<FAQquestion>" tab
        When I should navigate to "FAQ section"
        When I click on "<questions>" on "page"
        And I should see the "answer on the FAQquestion" on the "page"
        And I click on "<questions>" on "page"
        And "question" tab should be closed

        Examples:
            | questions                                                   |
            | Which are the Luxurious Lodha Group Projects?               |
            | Which are the best Lodha Group township projects In Mumbai? |
            | Which Lodha Group Projects are currently for sale?          |
            | What is the speciality of Lodha Group?                      |
            | When was Lodha Group Founded?                               |

@automated @builderPage-13 @automated
Scenario Outline: Builder Page - City Filter Functionality
    When I select "<city>" from "all cities" select field
    And I select "<popular parts>" from "popular parts" select field
    And I select "<locality>" from "localities" select field
    And I click on the "search button"
    Then I should see the "properties" on the "page"

    Examples:
        | city   | popular parts  | locality  |
        | Mumbai | Western Mumbai | Bandra    |
        | Pune   | Pune North     | Hinjewadi |

@automated @builderPage-14 @automated
Scenario Outline: Builder Page - Recommended Filter for <filter> filter
    When I select "<filter>" from "recommended" select field
    Then I should see the "properties" on the "page"


    Examples:
        | filter              |
        | Price - Low to High |
        | Price - High to Low |
        | Area - Low to High  |
        | Area - High to Low  |

