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

When('I click on the {string} button on the {string} of the page', (string,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("element",string)
    webButton.click(str)
})

Then('I should see the {string} under {string} button', (element,text) => {
    webElement.shouldBeVisible(commonLocators[element])
})

When('I click on {string} under the {string}', (string,element) => {
    const locator = commonLocators[element].toString();
    const str = locator.replace("element",string)
    webButton.click(str)
})

Then('I should see the {string} tab', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})
Then('I scroll to the bottom to see the footer', () => {
    cy.scrollTo('bottom',{force:true})
})
When('I select {string} property type', (element) => {
    webButton.click(commonLocators[element])
})
When('I click on the {string} field on the {string}', (cityName,element) => {
    let locator=`${commonLocators[element]}:contains("${cityName}"):last()`;
    webButton.click(locator)
})