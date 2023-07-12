import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import commonLocators from "../../pages/locators.json"
import WebElement from "../../helpers/webElement.js"
import WebButton from "../../helpers/webButton"

const actions = new GenericActions();
const webElement = new WebElement();
const webButton = new WebButton();

When('I click on {string} on the {string}', (string,element) => {
    webButton.click(commonLocators[element]);
    let locator=`${commonLocators[element]} ul li:contains("${string}"):last`;
    webButton.focusClick(locator)
})

Given('I should navigate to {string} url', (url) => {
    actions.visit(url)
})

Then('I should be navigated to page having {string}', (urls) => {
    actions.getUrl()
})

Then('The {string} in city should have selected in search area', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('The {string} should have the future date', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('I should be navigated to corressponding {string}', (url) => {
    actions.getUrl()
})

Then('I should see the {string} on {string}', (element,text) => {
    if (text== "deals of the week section") {
    let locator = `${commonLocators[element]}:eq()`;
    webElement.shouldBeVisible(locator)
    }
    else if(text=="discounted deals section") {
        let locator = `${commonLocators[element]}:eq(12)`;
        webElement.shouldBeVisible(locator) 
    }
})

When('I clicks on the {string} on the {string}', (element,text) => {
    if (text== "deals of the week section") {
    let locator = `${commonLocators[element]}:eq()`;
    webButton.focusClick(locator)
    }
    else if (text== "discounted deals section") {
    let locator = `${commonLocators[element]}:eq(6)`;
    webButton.focusClick(locator)
    }
    else if (text== "recommended property section") {
        let locator = `${commonLocators[element]}:eq(17)`;
        webButton.focusClick(locator) 
    }
    else if (text== "customer section") {
        let locator = `${commonLocators[element]}:eq(3)`;
        webButton.focusClick(locator) 
    }
    else if(text== "meet our customer section") {
        let locator = `${commonLocators[element]}:eq(4)`;
        webButton.focusClick(locator) 
    }
    else if (text =="top article section") { 
        let locator = `${commonLocators[element]}:last()`;
        webButton.focusClick(locator)   
    }
})

Then('I should see the {string} on the page', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

