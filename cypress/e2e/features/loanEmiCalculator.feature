Feature: Home Loan Emi Calculator Page

    As a tester, I want to test the home loan emi calculator page of homebazaar application

    Background:
        Given I am on the "homeloanemicalculator" page

    @regresssion @homeLoanEMICalculatorPage-01 @automated
    Scenario: Home Loan EMI Calculator Page - checking the visibility of the Home Loan EMI calculator heading
        Then I should see the "header" on the "page"
        And I should see the "home loan emi calculator heading" on the "page"

    @regresssion @homeLoanEMICalculatorPage-02 @automated
    Scenario Outline: Home Loan EMI Calculator Page  - emi calculator functionality for <loanAmount>
        When I fill the "<loanAmount>" on the "Loan Amount" input field
        And I fill the "<year>" on the "year" input field
        And I fill the "<interestRate>" on the "interest rate" input field
    Then I should see "Monthly Home Loan EMI" on the "section" field
    And I should see "<monthlyHomeLoanEmi>" on the "emi" field
    And I should see "Principal Amount" on the "section" field
    And I should see "<principalAmount>" on the "emi" field
    And I should see "Interest Amount" on the "section" field
    And I should see "<interestAmount>" on the "emi" field
    And I should see "Total Amount Payable" on the "section" field
    And I should see "<totalAmountPayable>" on the "emi" field
    Examples:
        | loanAmount | year | interestRate | monthlyHomeLoanEmi | principalAmount | interestAmount | totalAmountPayable |
        | 2000000    | 10   | 7.2          | 23,428             | 20,00,000       | 8,11,405       | 28,11,405          |
        | 2500000    | 7    | 12           | 44,132             | 25,00,000       | 12,07,074      | 37,07,074          |
        | 3000000    | 8    | 12           | 48,759             | 30,00,000       | 16,80,818      | 46,80,818          |

    @regresssion @homeLoanEMICalculatorPage-03 @automated
    Scenario: Home Loan EMI Calculator Page - checking the visibility of the graph on Home Loan EMI calculator
        Then I should see the "circular graph" on the "page"

    @regresssion @homeLoanEMICalculatorPage-04 @automated
    Scenario Outline: Home Loan EMI Calculator Page  - checking the opening and closing of "<FAQquestion>" tab
        When I should navigate to "question section"
        When I click on "<questions>" on "page"
        And I should see the "answer on the FAQquestion" on the "page"
        And I click on "<questions>" on "page"
        And "question" tab should be closed

        Examples:
            | questions                                                        |
            | What does an EMI mean?                                           |
            | What does an EMI mean?                                           |
            | What are the benefits of using an EMI calculator for a home loan |
            | How do I apply for a home loan?                                  |

