import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import commonLocators from "../../pages/locators.json"
import Urls from "../../urls/Urls.json";
import WebElement from "../../helpers/webElement.js"
import WebXpath from "../../helpers/webXpath"
import WebButton from "../../helpers/webButton"
import WebTextBox from "../../helpers/webTextBox";
import WebSelectBox from "../../helpers/webSelectBox";

const actions = new GenericActions();
const webElement = new WebElement();
const webXpath = new WebXpath();
const webButton = new WebButton();
const webTextBox = new WebTextBox();
const webSelectBox = new WebSelectBox();



Given('I am on the {string} page', (url) => {
    actions.visit(Urls[url]);
})

Then('I should see {string} present on pdp page', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I click on {string} on {string}', (string,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("city",string)
    webButton.focusClick(str)
})

Then('I should navigate to {string} page', (text) => {
    actions.getTitle(text);
})

Then('I should see {string} in pdp page heading', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I hover over the {string} in the pdp page heading', (element) => {
    webElement.trigger(commonLocators[element])
}) 

Then('I should see the {string} in pdp page heading', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I click on the {string}', (element) => {
    webButton.click(commonLocators[element])
})

Then('I should see the red {string}', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('I should see the {string} on the page', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('I should see the {string} on the image', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I hover over {string} on the image', (element) => {
    webElement.trigger(commonLocators[element])
})

Then('I click on the {string} text on the hero image', (element) => {
    webButton.focusClick(commonLocators[element])
})

When('I click on the {string} button on the image modal', (element) => {
    webButton.click(commonLocators[element])
})

Then('I fill {string} on the {string} input field on the image modal', (text,element) => {
    if(text == "Test Data") {
    webTextBox.typeText(commonLocators[element], "Ayush Sharma")
    }
    else if(text == "random mobile number") {
        webTextBox.typeText(commonLocators[element], actions.generateMobileNumber(text))   
    }
    else if(text =="random email") {
        webTextBox.typeText(commonLocators[element], actions.generateEmailAddresss(text))
    }
})
Then("I select {string} from {string} field on the image modal", (text,element) => {
    if(text=="first date") {
    webButton.click(commonLocators[element])
    }
    else {
        webSelectBox.selectDropDownUsingText(commonLocators[element], text)
    }
})

Then('I check the {string} on the image modal', (element) => {
    webButton.click(commonLocators[element])
})

When("I click on the {string} tab on the header", (element) => {
    if(element=="introduction") {
        webButton.click(commonLocators[element])
    }
    else {
    webXpath.clickByXpath("visibleText",element)
    }
})

When('I click on {string} button on the introduction section', (element) => {
    webButton.click(commonLocators[element])
})
Then('I should see the {string} on the introduction section', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('I should not see the {string} on the introduction section', (element) => {
    webElement.elementIsPresent(commonLocators[element])
})

When('I click on {string} tab on pricing and floor section', (element) => {
    webButton.click(commonLocators[element])
})

When('I fill {string} name on the {string} input field on popup form', (text,element) => {
    webButton.click(commonLocators[element], text)
})

When('I fill {string} on the {string} input field on popup form', (text,element) => {
    if(text=="Test Data") {
    webTextBox.typeText(commonLocators[element], "Ayush Sharma")
    }
    else if(text == "random mobile number") {
        webTextBox.typeText(commonLocators[element], actions.generateMobileNumber(text))   
    }
    else if(text =="email") {
        webTextBox.typeText(commonLocators[element], actions.generateEmailAddresss(text))
    }
})

// _________________________________________________________
When('I check the {string} on popup form', (element) => {
    webButton.click(commonLocators[element])
})

When('I click on {string} tab on popup form', (element) => {
    webButton.click(commonLocators[element])
})

When('I select {string} from {string} field on the popup form', (text, element) => {
    webButton.click(commonLocators[element], text)
})

When('I select {string} from choose {string} select field on the popup form', (text, element) => {
    webSelectBox.selectDropDownUsingText(commonLocators[element], text)
})

When('I click on {string} button on popup form', (element) => {
    webButton.click(commonLocators[element])
})

When('I click on {string} button on the pricing and floor section', (element) => {
    webXpath.clickByXpath("visibleText", element)
})