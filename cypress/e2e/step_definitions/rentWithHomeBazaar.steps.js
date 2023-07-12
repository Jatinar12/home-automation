import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import commonLocators from "../../pages/locators.json"

import WebElement from "../../helpers/webElement.js"

const webElement = new WebElement();

Then('I should see the {string} along with the heading', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})
Then('I should see {string} on rent a property section', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('I should see image,{string} and {string} on the {string}', (text,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("element",text)
    webElement.shouldBeVisible(str)
})

Then('I should see image,{string} heading and description', (element)=> {
    webElement.shouldBeVisible(commonLocators[element])
})
Then('I should see image and {string} on the {string}', (text,element)=> {
    const locator = commonLocators[element].toString();
    const str = locator.replace("element",text)
    webElement.shouldBeVisible(str)
})