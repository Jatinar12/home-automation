Feature: Header

    As a tester, I want to test the header of the homebazaar application

    Background:
        Given I am on the "home" page

    @regression @sanity @header-01 @automated
    Scenario: Header - checking the functionality of the homebazaar icon on the header of the homepage
        And I should navigate to "/buy-a-property" url
        When I click on the "logo"
        Then I should navigate to "homepage" page

    @regression @sanity @header-02 @automated
    Scenario: Header - checking the functionality of Post Property button of the header
        When I click on the "post property" on the "header"
        Then I should navigate to "post property" page

    @regression @sanity @header-03 @automated
    Scenario Outline: Header - checking the dropdown functionality of <button> button
        When I click on the "<button>" button on the "headers" of the page
        Then I should see the "dropdownList" under "<button>" button

        Examples:
            | button    |
            | Home Loan |
            | buy       |
            | sell      |
            | rent      |

    @regression @sanity @header-04 @automated
    Scenario Outline: Header - checking the functionality of the "<button>" for "<item>" on the header
        When I click on the "<button>" button on the "headers" of the page
        And I click on "<item>" under the "button"
        Then I should navigate to "particular" page

        Examples:
            | button    | item                  |
            | Home Loan | Apply For Loan        |
            | Home Loan | Eligibility Calcultor |
            | Home Loan | EMI Calculator        |
            | buy       | Buy a Property        |
            | buy       | Home Buying Guide     |
            | sell      | Sell Your Property    |
            | sell      | Home Worth Calculator |
            | sell      | Home Selling Guide    |

@regression @sanity @header-05 @automated
Scenario: Header - checking the functionality of the heart icon on the header
    When I click on the "heartIcon" on the "header"
    Then I should see the "shortlisted any property" tab
    When I click on the "viewAll button" on the "shortlisted any property tab"
    Then I should navigate to "/shortlisted-properties" url

@regression @sanity @header-06 @automated
Scenario: Header - checking the functionality of the profile icon on the header
    When I click on the profile icon on the header
    Then I should see the login modal on the header

@regression @sanity @header-07 @automated
Scenario: Header - checking the visibility and functionality of the sidebar
    When I click on the "hamburger icon" on the "header"
    Then I should see the "sidebar" on the "page"
    When I click on the "close icon" on the "sidebar"
    Then I should not see the "sidebar" on the "page"

@regression @sanity @header-08 @automated
Scenario Outline: Header - checking the functionality of the "Buy" button for <cityName> city on the search header
    Then I scroll to the bottom to see the footer
    When I click on the "Buy" on the "property type"
    And I select "first option" property type
    Then I scroll to the bottom to see the footer
    When I click on the "mumbai" on the "city type"
    And I select "<cityName>" on the "city type"
    Then I should navigate to "/buy/<cityName>" url

    Examples:
        | cityName  |
        | Mumbai    |
        | Pune      |
        | Bangalore |
        | Chennai   |
        | Noida     |

@regression @sanity @header-09 @automated
Scenario Outline: Header - checking the functionality of the "Rent" button for <cityName> city on the search header
    Then I scroll to the bottom to see the footer
    When I click on the "Buy" on the "property type"
    And I select "Rent" property type
    Then I scroll to the bottom to see the footer
    When I click on the "mumbai" on the "city type"
    And I select "<cityName>" on the "city type"
    Then I should navigate to "/rent/<cityName>" url

    Examples:
        | cityName  |
        | Mumbai    |
        | Pune      |
        | Bangalore |
        | Chennai   |
        | Noida     |

@regression @sanity @header-10 @automated
Scenario Outline: Header - checking the navigation of homepage to <cityName> search page
    Then I scroll to the bottom to see the footer
    When I click on the "searchInputField" on the "header"
    Then I should see the "city dropdown list" on the "page"
    When I click on the "<cityName>" field on the "city list"
    Then I should navigate to "cityName" page

    Examples:
        | cityName                 |
        | Navi Mumbai              |
        | Thane                    |
        | Central Mumbai           |
        | Western Mumbai           |
        | South Mumbai             |
        | Kalyan Dombivali         |
        | Dombivali                |
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