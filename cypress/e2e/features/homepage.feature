Feature: Homepage

    As a tester, I want to test the home page of the homebazaar application

    # added the shortlist property click functionality

    Background:
        Given I am on the "home" page

    @regression @sanity @homePage-1 @automated
    Scenario Outline: HomePage -  navigation of Homepage to <cityname> search page
        When I click on "<cityname>" on the "search area"
        And I click on the "searchButton"
        Then I should navigate to "searchpage" page

        Examples:
            | cityname  |
            | Mumbai    |
            | Pune      |
            | Bangalore |
            | Chennai   |
            | Noida     |

    # @regression @sanity @homePage-2 @automated
    Scenario: Clicking Homebazaar logo should naviate to home page
        Given I should navigate to "/buy-a-property" url
        When I click on the "logo"
        Then I should navigate to "homepage" page

    @regression @sanity @homePage-3 @automated
    Scenario Outline: Search area - Clicking "<button>" button should navigate to "<expectedurl>" page
        When I click on "<cityname>" on the "search area"
        And I click on the "<button>"
        Then I should be navigated to page having "<expectedurl>"

        Examples:
            | cityname | button | expectedurl    |
            | Mumbai   | buy    | /buy/mumbai    |
            | Mumbai   | rent   | /rent/mumbai   |

    @regression @sanity @homePage-4 @automated
    Scenario Outline: Home Page - checking the navigation of homepage to <cityName> search page
        When I click on the "search input field"
        Then I should see the "city dropdown list" on the "page"
        When I click on "<cityName>" on "dropdown list"
        Then I should be navigated to page having "cityName"

        Examples:
            | cityName                 |
            | Navi Mumbai              |
            | Central Mumbai           |
            | Western Mumbai           |
            | South Mumbai             |
            | Kalyan Dombivali         |
            | Panvel                   |
            | Majiwada                 |
            | Thombrewadi              |
            | Bhingarwadi              |
            | Bhokarpada Road          |
            | Hiranandani Fortune City |
            | Lodha Upper Thane        |
            | Rustomjee Urbania        |
            | Lodha Group              |
            | Godrej Properties        |
            | Rustomjee Group          |

    @regression @sanity @homePage-5 @automated
    Scenario: Deals of the Week section - city should be as per the city selected in Search area
        Then I should see the "deal" on the "week section"
        And The "deal of the week" in city should have selected in search area

    @regression @sanity @homePage-6 @automated
    Scenario: Deals of the Week section - date should be future date
        Then I should see the "deal" on the "week section"
        And The "dealOfWeek" should have the future date

    @regression @sanity @homePage-7 @automated
    Scenario: Deals of the Week section - View All link
        Then I should see the "deal" on the "week section"
        When I click on the "view all link"
        Then I should be navigated to corressponding "property detail page"

    @regression @sanity @homePage-8 @automated
    Scenario: Deals of the Week section - clicking on View Details is navigating to pdp page
        Then I should see the "deal" on the "week section"
        When I click on the "view details"
        Then I should be navigated to corressponding "property detail page"

    @regression @sanity @homePage-9 @automated
    Scenario: Deals of the Week section - Property details is appearing properly
        Then I should see the "deal" on the "week section"
        And I should see the "propertyImage" on "deals of the week section"
        And I should see the "propertyName" on "deals of the week section"
        And I should see the "builderName" on "deals of the week section"
        And I should see the "priceRange" on "deals of the week section"
        And I should see the "propertyArea" on "deals of the week section"
        And I should see the "propertySize" on "deals of the week section"
        And I should see the "propertyLocation" on "deals of the week section"
        When I click on the "propertyName" on the deals of the week section
        Then I should be navigated to corressponding "property detail page"

    @regression @sanity @homePage-10 @automated
    Scenario: Deals of the Week section - Instant Call Back form
        Then I should see the "deal" on the "week section"
        When I click on the "instantCallBack"
        Then I should see the "instant call back form" on the "page"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
       When I click on the "get instant callBAck"
       Then I should see the "OTP modal" on the "page"

    @regression @sanity @homePage-11 @automated
    Scenario:  Deals of the Week section - Instant Call Back form to Arrange Site Visit
        Then I should see the "deal" on the "week section"
        When I click on the "instantCallBack"
        When I click on the "arrange sites button" on the "form"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I select "first date" from "date" field on the modal
        And I select "11:00 am" from "time" field on the modal
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
        When I click on the "arrange visit button" on the "form"
        Then I should see the "OTP modal" on the "page"


    @regression  @homePage-12 @automated
    Scenario:Deals of the Week section - forward and backward arrow functionality
        Then I should see the "deal" on the "week section"
        When I clicks on the "forward arrow" on the "deals of the week section"
        Then I should see the "all the property card" on the "deals of the week section"
        When I clicks on the "backward arrow" on the "deals of the week section"
        Then I should see the "all the property card" on the "deals of the week section"
        When I clicks on the "forwardArrow" on the "deals of the week section"
        Then I should see the "all the property card" on the "deals of the week section"

    @regression  @homePage-13 @automated
    Scenario: Discounted Deals section - city should be as per the city selected in Search area
        Then I should see the "discounted deal" on the "deals section"
        And The "discounted deals" in city should have selected in search area

    @regression  @homePage-14 @automated
    Scenario: Discounted Deals section - date should be future date
        Then I should see the "discounted deal" on the "deal section"
        And The "discountDeals" should have the future date

    @regression  @homePage-15 @automated
    Scenario: Discounted Deals section - View All link
        Then I should see the "discounted deal" on the "deal section"
        When I click on the "viewAllLink"
        Then I should be navigated to corressponding "property detail page"

    @regression @homePage-16 @automated
    Scenario: Discounted Deals section - clicking View Details is navigating to pdp page
        Then I should see the "discounted deal" on the "deal section"
        When I click on the "viewDetails"
        Then I should be navigated to corressponding "property detail page"

    @regression  @homePage-17 @automated
    Scenario: Discounted Deals section - Property details is appearing properly
        Then I should see the "discounted deal" on "deal section"
        And I should see the "propertyImage" on "discounted deals section"
        And I should see the "propertyName" on "discounted deals section"
        And I should see the "builderName" on "discounted deals section"
        And I should see the "priceRange" on "discounted deals section"
        And I should see the "propertySize" on "discounted deals section"
        And I should see the "propertyLocation" on "discounted deals section"
        When I click on the "propertyName" on "discounted deals section"
        Then I should be navigated to corressponding "property detail page"

    @regression  @homePage-18 @automated
    Scenario: Discounted Deals section - Instant Call Back form
        Then I should see the "discounted deal" on "deal section"
        When I click on the "instantCallBack button"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
        When I click on the "get instant callBAck"
        Then I should see the "OTP modal" on the "page"

    @regression  @homePage-19 @automated
    Scenario:Discounted Deals section - Instant Call Back form to Arrange Site Visit
        Then I should see the "discounted deal" on "deal section"
        When I click on the "instantCallBack button"
        When I click on the "arrange sites button" on the "form"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I select "first date" from "date" field on the modal
        And I select "11:00 am" from "time" field on the modal
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
        When I click on the "arrange visit button" on the "form"
        Then I should see the "OTP modal" on the "page"

    @regression  @homePage-12 @automated
    Scenario:Discounted Deals section - forward and backward arrow functionality
        Then I should see the "discounted deal" on "deal section"
        When I clicks on the "forward arrow" on the "discounted deals section"
        Then I should see the "all the property card" on the "the discounted deals section"
        When I click on the "backward arrow"
        Then I should see the "all the property card" on the "discounted deals section"
        When I clicks on the "forward arrow" on the "discounted deals section"
        Then I should see the "all the property card" on the "the discounted deals section"

    @regression  @homePage-20 @automated
    Scenario: Recommended Projects Section - recommended property should be visible
        Then I should see the "recommended property section" on the page
        And I should see the "top selling recommended projects" on the "recommended property section"
        And I should see the "projects in high demand" on the "recommended property section"
        And I should see the "property card" on the "recommended property section"

    @regression  @homePage-21 @automated
    Scenario: Recommended Projects Section - View All link on the section
        Then I should see the "recommended property section" on the page
        When I click on the "viewAllLink"
        Then I should be navigated to corressponding "recommendedProperty"

    @regression  @homePage-22 @automated
    Scenario: Recommended Projects Section - forward and backward arrow functionality on the recommended property section
        Then I should see the "recommended property section" on the page
        When I clicks on the "forward arrow" on the "recommended property section"
        Then I should see the "all the property card" on the "recommended property section"
        When I clicks on the "forward arrow" on the "recommended property section"
        Then I should see the "all the property card" on the "recommended property section"
        When I clicks on the "forward arrow" on the "recommended property section"
        Then I should see the "all the property card" on the "recommended property section"
        When I click on the "backward arrow" on "recommended property section"
        Then I should see the "all the property card" on the "recommended property section"
        When I click on the "backward arrow" on "recommended property section"
        Then I should see the "all the property card" on the "recommended property section"

    @regression  @homePage-23 @automated
    Scenario: Recommended Projects Section - clicking on property image is navigating to pdp page
        Then I should see the "recommended property section" on the page
        When I click on the "PropertyImage" on the "Recommended Projects section"
    Then I should be navigated to corressponding "property detail page"


    @regression  @homePage-25 @automated
    Scenario: Recommended Projects Section - Property detail is appearing properly on recommended project card
        Then I should see the "recommended property section" on the page
        And I should see the "PropertyImage" on the "recommended project section"
        And I should see the "PropertyName" on the "recommended project section"
        And I should see the "builderName" on the "recommended project section"
        And I should see the "priceRange" on the "recommended project section"
        And I should see the "propertySize" on the "recommended project section"
        And I should see the "propertyLocation" on the "recommended project section"
        When I click on the "PropertyName" on the "recommended project section"
        Then I should be navigated to corressponding "property detail page"


    @regression  @homePage-26 @automated
    Scenario: Recommended Projects Section - Instant Call Back form
        Then I should see the "recommended property section" on the page
        When I click on the "instantCallBack button"
        When I fill "Test Data" on the "name" input field
         And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
        When I click on the "get instant callBAck"
        Then I should see the "OTP modal" on the "page"

    @regression  @homePage-27 @automated
    Scenario: Recommended Projects Section - Instant Call Back form to Arrange Site Visit
        Then I should see the "recommended property section" on the page
        When I click on the "instantCallBack button"
        And I click on the "arrange sites button" on the "form"
        When I fill "Test Data" on the "name" input field
        And I fill "random mobile number" on the "mobile number" input field
        And I fill "random email" on the "email" input field
        And I select "first date" from "date" field on the modal
        And I select "first date" from "date" field on the modal
        And I select "11:00 am" from "time" field on the modal
        And I check the "I accept Terms and Conditions" on the form
        And I check the "homeloans checkbox" on the form
        When I click on the "arrange visit button" on the "form"
        Then I should see the "OTP modal" on the "page"

    @regression @homePage-28 @automated
    Scenario: Top Builder Section - city should be as per the city selected in Search area
        Then I should see the "top builders section"
        And The "top builders section" in city should have selected in search area

    @regression  @homePage-29 @automated
    Scenario: Top Builder Section - builders are present
        Then I should see the "top builders section"
        And I should see the "builders list" on the "Top builders section"

    @regression  @homePage-30 @automated
    Scenario: Top Builder Section - verify builder card details
        Then I should see the "top builders section"
        And I should see the "builder logo" on the "builder card"
        And I should see the "builderName" on the "builder card"
        And I should see the "builder star ratings" on the "builder card"
        And I should see the "builder experience" on the "builder card"
        And I should see the "total projects done by builder" on the "builder card"
        And I should see the "builderDescription" on the "builder card"
        And I should see the "read More" on the "builder card"
        When I click on the "read More"
        Then I should be navigated to corressponding "builder detail page"

    @regression  @homePage-31 @automated
    Scenario: Top Builder Section - View all Projects button on the builder card
        Then I should see the "top builders section"
        And I should see the "View all Projects link" on the "builder card"
        When I click on the "View all Projects link" on the "builder card"
        Then I should be navigated to corressponding "builder detail page"

    @regression  @homePage-32 @automated
    Scenario: Top Builder Section - view all project button on the section
        Then I should see the "top builders section"
        And I should see the "view all button" on the "top builder section"
        When I click on the "view all button" on the "top builder section"
        Then I should be navigated to corressponding "city in builder page"

    @regression  @homePage-33 @automated
    Scenario: Top Builder Section - forward and backward arrow functionality on Top Builder Section
        Then I should see the "top builders section"
        When I clicks on the "forwardArrow" on the "customer section"
        Then I should see the "all the builder card" on the "top builder section"
        When I clicks on the "forwardArrow" on the "customer section"
        Then I should see the "all the builder card" on the "top builder section"
        When I clicks on the "forwardArrow" on the "customer section"
        Then I should see the "all the builder card" on the "top builder section"
        When I clicks on the "backwardArrow" on the "customer section"
        Then I should see the "all the builder card" on the "top builder section"
        When I clicks on the "backwardArrow" on the "customer section"
        Then I should see the "all the builder card" on the "top builder section"


    @regression  @homePage-34 @automated
    Scenario: Home Page - Meet Our Customers section
        Then I should see the "top builders section"
        And I should see the "meet our customers heading" on the "customer section"
        And I should see the "all the customer feedback card" on the "customer section"
        When I clicks on the "forwardArrow" on the "meet our customer section"
        Then I should see the "all the customer feedback card" on the "customer section"
        When I clicks on the "forwardArrow" on the "customer section"
        Then I should see the "all the customer feedback card" on the "customer section"
        When I clicks on the "backwardArrow" on the "customer section"
        Then I should see the "all the customer feedback card" on the "customer section"
        When I clicks on the "backwardArrow" on the "customer section"
        Then I should see the "all the customer feedback card" on the "customer section"
        When I clicks on the "backwardArrow" on the "customer section"
        Then I should see the "all the customer feedback card" on the "customer section"


    @regression  @homePage-35 @automated
    Scenario: Home Page - Top Articles Section
       Then I should see the "top builders section"
        And I should see the "all the articles card" on the "top article section"
        When I clicks on the "backwardArrow" on the "top article section"
        Then I should see the "all the articles card" on the "top article section"
        When I clicks on the "forwardArrow" on the "top article section"
        Then I should see the "all the articles card" on the "top article section"


    @regression  @homePage-36 @automated
    Scenario: Home Page - Knowledge center card
        Then I should see the "top builders section"
        When I clicks on the "forwardArrow" on the "top article section"
        And I clicks on the "forwardArrow" on the "top article section"
        Then I should see the "knowledge center card" on the "top article section"
        And I should see the "connect to knowledge center" on the "knowledge center card"
        When I clicks on the "Connect to knowledge center" on the "knowledge center card"
        Then I should be navigated to corressponding "knowledge center page"