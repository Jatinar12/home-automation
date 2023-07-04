Feature: Property Detail Page

    As a tester, I want to test the property details page of the homebazaar application

    Background:
        Given I am on the "buyPDP" page

    # @regression @buyPDPPage-01 @automated
    # Scenario Outline: Buy Property Detail Page - navigation from buy PDP Page to <city> search page
    #     Then I should see "breadcrumbs" present on pdp page
    #     When I click on "<city>" on "breadcrumb"
    #     Then I should navigate to "<city>" page

    #     Examples:
    #         | city             |
    #         | Lodha Group      |
    #         | Dombivali        |
    #         | Kalyan Dombivali |
    #         | Mumbai           |
    #         | Home             |

    # @regression @buyPDPPage-02 @automated
    # Scenario: Buy Property Detail Page - verification of property heading
    #     Then I should see "project name" in pdp page heading
    #     When I hover over the "project name" in the pdp page heading
    #     Then I should see the "location" in pdp page heading
    #     And I should see the "property rating" in pdp page heading
    #     And I should see the "configuration" in pdp page heading
    #     And I should see the "starting price" in pdp page heading
    #     And I should see the "carpet area" in pdp page heading

    # @regression @buyPDPPage-03 @automated
    # Scenario: Buy Property Detail Page - checking the functionality of shortlist property icon
    #     When I click on the "shortlist property icon"
    #     Then I should see the red "shortlist property icon"

    # @regression @buyPDPPage-04 @automated
    # Scenario: Buy Property Detail Page - checking the functionality of share icon
    #     When I click on the "share icon"
    #     Then I should see the "social media icon modal" on the page

    # @regression @buyPDPPage-05 @automated
    # Scenario: Buy Property Detail Page - functionality of items on the hero image
    #     Then I should see the "hero image" on the image
    #     And I should see the "livability rating text" on the image
    #     When I hover over "livability rating text" on the image
    #     And I should see the "investment rating text" on the image
    #     When I hover over "investment rating text" on the image

    # @regression @buyPDPPage-06 @automated
    # Scenario Outline: Buy Property Detail Page - functionality of Video Tour button which navigate to arrange site visit form on the hero image
    #     Then I should see the "hero image" on the image
    #     And I click on the "video tour" text on the hero image
    #     Then I should see the "image modal" on the page
    #     When I click on the "arrange site visit" button on the image modal
    #     Then I fill "Test Data" on the "name" input field on the image modal
    #     And I fill "random mobile number" on the "mobile number" input field on the image modal
    #     And I fill "random email" on the "email" input field on the image modal
    #     And I select "first date" from "date" field on the image modal
    #     And I select "02:00 pm" from "time" field on the image modal
    #     And I check the "accept the term checkbox" on the image modal
    #     And I check the "homeloans checkbox" on the image modal
    #     And I click on the "arrange visit" button on the image modal
    #     Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-07 @automated
# Scenario: Buy Property Detail Page - functionality of Street View button which navigate to arrange site visit form on the hero image
#     Then I should see the "hero image" on the image
#     And I click on the "street view" text on the hero image
#     Then I should see the "image modal" on the page
#     When I click on the "arrange site visit" button on the image modal
#     Then I fill "Test Data" on the "name" input field on the image modal
#     And I fill "random mobile number" on the "mobile number" input field on the image modal
#     And I fill "random email" on the "email" input field on the image modal
#     And I select "first date" from "date" field on the image modal
#     And I select "03:00 pm" from "time" field on the image modal
#     And I check the "accept the term checkbox" on the image modal
#     And I check the "homeloans checkbox" on the image modal
    # And I click on the "arrange visit" button on the image modal
    # Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-08 @automated
# Scenario: Buy Property Detail Page - functionality of Images button which navigate to arrange site visit form on the hero image
#     Then I should see the "hero image" on the image
#     And I click on the "images" text on the hero image
#     Then I should see the "image modal" on the page
#     When I click on the "arrange site visit" button on the image modal
#     Then I fill "Test Data" on the "name" input field on the image modal
#     And I fill "random mobile number" on the "mobile number" input field on the image modal
#     And I fill "random email" on the "email" input field on the image modal
#     And I select "first date" from "date" field on the image modal
#     And I select "11:00 am" from "time" field on the image modal
#     And I check the "accept the term checkbox" on the image modal
#     And I check the "homeloans checkbox" on the image modal
#     And I click on the "arrange visit" button on the image modal
#     Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-08 @automated
# Scenario: Buy Property Detail Page - checking the functionality of "Read More" button on the introduction section
#     When I click on the "introduction" tab on the header
#     And I click on "read more" button on the introduction section
#     Then I should see the "complete description" on the introduction section
#     When I click on "read less" button on the introduction section
#     Then I should not see the "complete description" on the introduction section


# @regression @buyPDPPage-08 @automated
# Scenario: Buy Property Detail Page - checking the functionality of Price Breakup button
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "3 BHK" tab on pricing and floor section
#     And I click on "price breakup" tab on pricing and floor section
#     When I fill "Test Data" on the "name" input field on popup form
#     And I fill "random mobile number" on the "mobile number" input field on popup form
#     And I fill "email" on the "email" input field on popup form
#     And I check the "accept the term" on the image modal
#     And I check the "homeloans checkbox" on popup form
#     And I click on "request price now" button on popup form
#     Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-09 @automated
# Scenario: Buy Property Detail Page - checking the functionality of Price Breakup button (Arrange Site Visit Form)
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "3 BHK" tab on pricing and floor section
#     And I click on "price breakup" tab on pricing and floor section
#     And I click on "arrange site" tab on popup form
#     When I fill "Test Data" on the "name" input field on popup form
#     And I fill "random mobile number" on the "mobile number" input field on popup form
#     And I fill "email" on the "email" input field on popup form
#     And I select "first date" from "date" field on the popup form
#     And I select "11:00 am" from choose "time" select field on the popup form
#     And I check the "accept the term" on popup form
#     And I check the "homeloans checkbox" on popup form
#     And I click on "arrange visit" button on popup form
#     Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-10 @automated
# Scenario: Buy Property Detail Page - checking the functionlity of Get The Best Quote button
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "Get The Best Quote" button on the "pricing and floor section"
#     When I fill "Test Data" on the "name" input field on popup form
#     And I fill "random mobile number" on the "mobile number" input field on popup form
#     And I fill "email" on the "email" input field on popup form
#     And I check the "accept the term" on popup form
#     And I check the "homeloans checkbox" on popup form
#     And I click on "get best quote" tab on popup form
#     Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-11 @automated
# Scenario: Buy Property Detail Page - checking the functionlity of Get The Best Quote button (Arrange Site Visit Form)
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "Get The Best Quote" button on the "pricing and floor section"
#     And I click on "arrange site" tab on popup form
#     When I fill "Test Data" on the "name" input field on popup form
#     And I fill "random mobile number" on the "mobile number" input field on popup form
#     And I fill "email" on the "email" input field on popup form
#     And I select "first date" from "date" field on the popup form
#     And I select "11:00 am" from choose "time" select field on the popup form
#     And I check the "accept the term" on popup form
#     And I check the "homeloans checkbox" on popup form
#     And I click on "arrange visit" button on popup form
#     Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-12 @automated
# Scenario: Buy Property Detail Page - checking the functionality of Get Cost Sheet button
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "Get Cost Sheet" button on the "pricing and floor section"
#     When I fill "Test Data" name on the "name" input field on popup form
#     And I fill "random mobile number" on the "mobile number" input field on popup form
#     And I fill "email" on the "email" input field on popup form
#     And I check the "accept the term" on popup form
#     And I check the "homeloans checkbox" on popup form
#     And I click on "cost sheet" button on popup form
#     Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-13 @automated
# Scenario: Buy Property Detail Page - checking the functionlity of Get Cost Sheet button (Arrange Site Visit Form)
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "Get Cost Sheet" button on the "pricing and floor section"
#     And I click on "arrange site" tab on popup form
#     When I fill "Test Data" on the "name" input field on popup form
#     And I fill "random mobile number" on the "mobile number" input field on popup form
#     And I fill "email" on the "email" input field on popup form
#     And I select "first date" from "date" field on the popup form
#     And I select "11:00 am" from choose "time" select field on the popup form
#     And I check the "accept the term" on popup form
#     And I check the "homeloans checkbox" on popup form
#     And I click on "arrange visit" button on popup form
#     Then I should see the "OTP modal" on the page


# @regression @buyPDPPage-14 @automated
# Scenario: Buy Property Detail Page - checking the functionality of floor map section
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "floor map" button on the "floor map section"
#     Then I should see the "image modal" on the page
#     When I click on the "arrange site visit" button on the image modal
#     Then I fill "Test Data" on the "name" input field on the image modal
#     And I fill "random mobile number" on the "mobile number" input field on the image modal
#     And I fill "random email" on the "email" input field on the image modal
#     And I select "first date" from "date" field on the image modal
#     And I select "first date" from "date" field on the image modal
#     And I select "02:00 pm" from "time" field on the image modal
#     And I check the "accept the term" on the image modal
#     And I check the "homeloans checkbox" on the image modal
    # And I click on the "arrange visit" on the image modal
    # Then I should see the "OTP modal" on the page

# @regression @buyPDPPage-15 @automated
# Scenario: Buy Property Detail Page - checking the functionality of View Room Sizes button on floor map section
#     When I click on the "Pricing & Floor Plans" tab on the header
#     And I click on "view room sizes" button on the floor map section
#     Then I should see the "view room sizes modal" on the page
#     When I click on the "close button"
#     Then I should not see the "view room sizes" modal on the page

# @regression @buyPDPPage-16 @automated
# Scenario Outline: Buy Property Detail Page - checking the functionality of Map Section for <tab> tab
#     When I click on the "locality" tab on the header
#     Then I should see "map" on the map section
#     When I click on "<tab>" button on the map section

#     Examples:
#         | tab           |
#         | Commute       |
#         | Entertainment |
#         | Essentials    |
#         | Health        |
#         | Religious     |
#         | Security      |


# @regression @buyPDPPage-17 @automated
# Scenario: Buy Property Detail Page - Bank Offer Section
#     When  I navigate to the "bank offer section"
#     Then I should see all the "bank logo" on the bank offer section
#     When I click on "right" button on the bank offer section
#     Then I should see all the "bank logo" on the bank offer section
#     When I click on "right" button on the bank offer section
#     Then I should see all the "bank logo" on the bank offer section
#     When I click on "right" button on the bank offer section
#     Then I should see all the "bank logo" on the bank offer section
#     When I click on "left" button on the bank offer section
#     Then I should see all the "bank logo" on the bank offer section
#     And I click on "contact now" button on the bank offer section
#     Then I should navigate to "home loan emi calculator" page

# @regression @buyPDPPage-18 @automated
# Scenario: Buy Property Detail Page - checking the functionality of emi calculator
#     When I click on the "locality" tab on the header
#     And I navigate to the "emi calculator section"
#     And I click on the "emi calculator section"
#     Then I should see the "tab open"
#     And I fill "1000000" in the "loan amount" input field
#     And I fill "10" in the "loan tenure" input field
#     And I fill "9" in the "loan interest" input field
#     And I should see "10,00,000" on the "Loan amount" field
    # And I should see "15,20,109" on the "total amount" field
    # And I should see "12,668" on the "monthly emi" field

# @regression @buyPDPPage-19 @automated
# Scenario: Buy Property Detail Page - Properties Section
#     When I navigate to the "properties section"
#     Then I should see the "description" on the properties section
#     And I click on "readMore" button on the properties section
#     Then I should see the "completeDescription" on the properties section
#     When I click on "readLess" button on the properties section
#     Then I should not see the "complete description" on the properties section

# @regression @buyPDPPage-20 @automated
# Scenario Outline: Buy Property Detail Page - Rating and Reviews Section for <userType>
#     When I click on the "rating & review" tab on the header
#     And I click on "write review" button on rating and reviews section
#     Then I should see the "review modal" on the rating and reviews section
#     And I click on the "<userType>" on you know "locality question"
#     And I click on "4" star on "amenities & other features" question
#     And I click on "4" star on "the quality of construction" question
#     And I click on "4" star on "open areas & gardens" question
#     And I click on "4" star on "connectivity & daily commuting" question
#     And I fill "test question" on the "advantages" question
#     And I fill "test question" on the "disadvantages" question
#     And I click on "post review" button on rating and reviews section
#     And I fill "test data" in the "name" input field
#     And I click on "post review" button on rating and reviews section
#     And I should see the "thank you modal" on the page
#      When I click on the "close button"
#     Then I should not see the "thank you modal" modal on the page

    # Examples:
    #     | userType          |
    #     | Owner             |
    #     | Tenant            |
        # | Former Resident   |
        # | Real Estate Agent |
        # | Lives Nearby      |

# @regression @buyPDPPage-21 @automated
# Scenario Outline: Buy Property Detail Page- FAQ section for <FAQquestion>
#     When I click on the "FAQ" tab on the header
#     And I click on the "read More" button on FAQ section
#     When I click on the "<FAQquestion>" tab on the "page"
    # Then "<FAQquest>" tab should be open on the page
    # And I should see the answer on the "<FAQquestion>" tab on the page
    # And I click on the "<FAQquestion>" again
    # And "<FAQquestion>" tab should be closed

    # Examples:
    #     | FAQquestion                                              |
    #     | Is Lodha Codename Premier A Good For Investment?         |
#         | How many floors are there in Lodha Codename Premier?     |
#         | What is the address of Lodha Codename Premier?           |
#         | What is  Lodha Codename Premier 1 BHK Price?             |
#         | What is  Lodha Codename Premier 2 BHK Price?             |
#         | What is  Lodha Codename Premier 3 BHK Price?             |
#         | What is the Possession Status of Lodha Codename Premier? |
#         | How to check Lodha Codename Premier Sample Flat?         |

# @regression @buyPDPPage-22 @automated
# Scenario Outline: Buy Property Detail Page - Question Section for <tab> tab
#     When I navigate to the "FAQ"
#     And I click on "Have any questions" button on the question section
#     Then I should see the "question modal" on the page
#     When I fill "test question" on the "questionField"
#     And I click "<tab>" tab on "questionModal"
#     And I click on "ask question" button on the question section
#     Then I should see the "thank you modal" on the page

#     Examples:
#         | tab                         |
#         | New Projects                |
#         | Sale                        |
#         | Purchase                    |
#         | Rentals                     |
#         | Residential                 |
#         | Commercial                  |
#         | Home Loan                   |
#         | Legal and Taxation          |
#         | Investment                  |
#         | Information - City/Locality |
#         | Others                      |

# @regression @buyPDPPage-23 @automated
# Scenario:Buy Property Detail Page - About Builder Section
#     And I click on the "about builder" tab on the header
#     And I click on "readmore" button on about builder section
#     Then I should see the "completedescription" of the about builder section
#     When I click on "readless" button on about builder section
#     Then I should not see the "completedescription" of the about builder section

@regression @buyPDPPage-24 @automated
Scenario:Buy Property Detail Page - checking view all functionality for More Projects Section
    When I navigate to the "about builder"
    # And I click on the "View All" button on the more projects section
    # Then I should navigate to the property details page

# @regression @buyPDPPage-25 @automated
# Scenario: Buy Property Detail Page - checking arrow functionality for More Projects Section
#     When I navigate to the more projects section
#     When I click on right arrow on the more projects section
#     Then I should see all the properties on the more projects section
#     When I click on left arrow on the more projects section
#     Then I should see all the properties on the more projects section


# @regression @buyPDPPage-26 @automated
# Scenario: Buy Property Detail Page  - clicking the property card should navigate to PDP Page for More Projects Section
#     When I navigate to the more projects section
#     And I click on the first property card
# # Then I should navigate to the property details page


# @regression @buyPDPPage-27 @automated
# Scenario: Buy Property Detail Page - clicking the property card should navigate to PDP Page for More Projects Section
#     When I navigate to similar projects section
#     And I click on the first property card on similar project section
# # Then I should navigate to the property details page


# @regression @buyPDPPage-28 @automated
# Scenario: Buy Property Detail Page - Get Quote Form
#     When I fill "test data" name on the name input field
#     And I fill phone number on the phone number input field
#     And I fill email on the email input field
#     And I check I accept Terms and Conditions condition on the form
#     And I check I am interested in Home Loans condition on the form
#     And I click on the "Get Quote" button on the form
#     Then I should the otp modal on the page

# @regression @buyPDPPage-29 @automated
# Scenario: Buy Property Detail Page - Get Quote Form to Arrange Site Visit Form
#     When I click on the arrange site visit button on the form
#     Then I should see the schdedule tour form on the page
#     When I fill "test data" name on the name input field
#     And I fill phone number on the phone number input field
#     And I fill email on the email input field
#     And I select the third date on the tour date input field
#     And I select the "12:00 pm" date on the choose time input field
#     And I check I accept Terms and Conditions condition on the form
#     And I check I am interested in Home Loans condition on the form
#     And I click on the submit button on the form
#     Then I should the otp modal on the page


# @regression @buyPDPPage-30 @automated
# Scenario: Buy Property Detail Page - checking the functionality of tooltip on save with homebazaar modal
#     When I hover over the save with homebazaar tooltip
#     Then I should see the tooltip on the page
