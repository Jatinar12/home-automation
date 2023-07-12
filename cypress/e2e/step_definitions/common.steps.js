import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import commonLocators from "../../pages/locators.json"
import Urls from "../../urls/Urls.json";
import WebElement from "../../helpers/webElement.js"
import WebButton from "../../helpers/webButton"
import WebTextBox from "../../helpers/webTextBox";
import WebSelectBox from "../../helpers/webSelectBox";

const actions = new GenericActions();
const webElement = new WebElement();
const webButton = new WebButton();
const webTextBox = new WebTextBox();
const webSelectBox = new WebSelectBox();

Given('I am on the {string} page', (url) => {
    actions.visit(Urls[url]);
})

Then('I should navigate to {string} page', (urls) => {
    actions.checkUrl(Urls[urls]);
})

When('I click on the {string}', (element) => {
    webButton.focusClick(commonLocators[element])
})

When('I should navigate to {string}', (element) => {
    cy.scrollTo('center',{force:true})
    webElement.shouldBeVisible(commonLocators[element])
})
Then('I should see the {string} on the {string}', (element,text) => {
    if(text="hero image", "builder card") {
        webElement.shouldBeVisible(commonLocators[element])
    }
    else {
    webButton.focusClick(commonLocators[element], text)
    }
    })

    Then('I click on the {string} on the {string}', (element, text) => {
        webButton.focusClick(commonLocators[element], text)
    })
    Then('I fill {string} on the {string} input field', (text,element) => {
        if(text == "Test Data") {
        webTextBox.typeText(commonLocators[element], text)
        }
        else if(text == "random mobile number") {
            webTextBox.typeText(commonLocators[element], actions.generateMobileNumber())   
        }
        else if(text =="random email") {
            webTextBox.typeText(commonLocators[element], actions.generateEmailAddresss())
        }
    })
    Then("I select {string} from {string} field on the modal", (text,element) => {
        if(text=="first date") {
        webButton.click(commonLocators[element])
        }
        else {
            webSelectBox.selectDropDownUsingText(commonLocators[element], text)
        }
    })
    Then('I should not see the {string} on the {string}', (element,text) => {
        webElement.elementIsPresent(commonLocators[element], text)
    })
    Then('I should see {string} on the {string} field', (string,element) => {
        const locator = commonLocators[element].toString();
        const str = locator.replace("element",string)
        webElement.shouldBeVisible(str)
    })

    When('I fill the {string} on the {string} input field', (text,element) => {
        webTextBox.typeText(commonLocators[element],text)
    })