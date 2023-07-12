import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import GenericActions from "../../utilities/genericActions";
import commonLocators from "../../pages/locators.json"
import WebElement from "../../helpers/webElement.js"
import WebButton from "../../helpers/webButton"
import WebSelectBox from "../../helpers/webSelectBox";

const actions = new GenericActions();
const webElement = new WebElement();
const webButton = new WebButton();
const webSelectBox = new WebSelectBox();

When('I select {string} from the {string}', (text,element) => {
    webSelectBox.selectDropDownUsingText(commonLocators[element], text)
})

Then('I should see the {string} should be greater than zero', (element) => {
    webElement.shouldBeVisible(commonLocators[element])
})

Then('I should navigated to the {string} of that property', (text) => {
    actions.getTitle(text);
})

When('I select {string} from {string} select field', (text,element) => {
    webSelectBox.selectDropDownUsingText(commonLocators[element], text)
})

When('I click on the {string} on {string}', (string,element) => {
    const locator = commonLocators[element].toString();
        const str = locator.replace("element",string)
        webElement.shouldBeVisible(str)
        webButton.click(commonLocators[element], string)
})

When('{string} tab should be closed',(element) => {
    webElement.shouldBeVisible(commonLocators[element])
})