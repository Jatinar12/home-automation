import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/locators.json"
import WebElement from "../../helpers/webElement.js"
import WebXpath from "../../helpers/webXpath"
import WebButton from "../../helpers/webButton"
import WebTextBox from "../../helpers/webTextBox";


const webElement = new WebElement();
const webXpath = new WebXpath();
const webButton = new WebButton();
const webTextBox = new WebTextBox();

Then('I should see {string} present on pdp page', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I click on {string} on {string}', (string,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("city",string)
    webButton.focusClick(str)
})

When('I hover over the {string} in the pdp page heading', (element) => {
    webElement.trigger(commonLocators[element],"mouseover")
}) 

Then('I should see the {string} in pdp page heading', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('I should see the red {string}', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I hover over {string} on the image', (element) => {
    webElement.trigger(commonLocators[element],"mouseover")
})

Then('I check the {string} on the form', (element) => {
    webButton.click(commonLocators[element])
})

When("I click on the {string} tab on the header", (element) => {
        webButton.click(commonLocators[element])
})

When('I click on {string} button on the {string}', (element, text) => {
    webXpath.clickByXpath("visibleText", element)
})

When('I click on {string} on the view room sizes modal', (element) => {
    webButton.click(commonLocators[element])
})

When ('I navigate to the {string}', (element) => {
    cy.scrollTo('center',{force:true})
    cy.wait(5000)
    webButton.click(commonLocators[element])
})

Then('I should see the {string}', (element) => {
    webButton.click(commonLocators[element])
})

Then('I click on the {string} on you know {string}', (string,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("userType",string)
    webButton.focusClick(str)
})

Then('I click on 4 star on {string} question', (element) => {
    webButton.click(commonLocators[element])
})

Then('I fill {string} on the {string} question', (text,element) => {
    webTextBox.typeText(commonLocators[element], text)
})

When('I click on the {string} tab on the {string}', (string,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("page",string)
    webButton.focusClick(str)
})

Then('{string} tab should be open on the page', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I fill {string} on the {string}', (text,element) => {
    webTextBox.typeText(commonLocators[element], text)
})

When('I click {string} tab on {string}', (string,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("tab",string)
    webButton.focusClick(str)
})

When('I hover over the save with {string}', (element) => {
    webElement.trigger(commonLocators[element],"mouseover")
})