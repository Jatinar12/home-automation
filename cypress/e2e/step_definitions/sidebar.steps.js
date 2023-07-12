import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import commonLocators from "../../pages/locators.json"
import WebElement from "../../helpers/webElement.js"
import WebButton from "../../helpers/webButton"

const webElement = new WebElement();
const webButton = new WebButton();


When('I click on the {string} button on the {string}', (text,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("element",text)
    webButton.focusClick(str)
})

When('{string} list expanded', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I click again on {string} on the {string}', (text,element) => {
    let locator = `${commonLocators[element]}:eq(1)`;
    webButton.click(locator)
})

When('I should see {string} on the {string}', (text,element) => {
    webElement.shouldBeVisible(commonLocators[element], text)
})

When('I click on the {string} section on the {string}', (text,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("element",text)
    webButton.focusClick(str)
})
Then('{string} should be visible', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})