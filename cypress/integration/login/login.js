/// <reference types="cypress" />
import {Given, When, Then } from "cypress-cucumber-preprocessor/steps"


Given('James is at the url page', () => {
  cy.visit('https://myweb.io/#')
});

When('James login with username {string} and password {string}', (username, password) => {
cy.login(username, password)
});

Then('James is able to login', () => {
  cy.url().should('include', 'dashboard')// => true
});

Then('James is unable to login', () => {
  cy.get('.notification-content').contains('Incorrect username or password') // => true
});
