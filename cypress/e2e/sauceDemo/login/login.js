import LoginPage from "../../../pom/login/login.cy";
import { Given, When, Then } from '@badeball/cypress-cucumber-preprocessor';

describe('Login Test', () => {

  Given('User on the login page', () => {
    cy.visit('https://saucedemo.com');
  });
  
  When('User enter valid uname {string}', (username) => {
    LoginPage.inputUsername().type(username);
  });
  
  When('User enter valid passw {string}', (password) => {
    LoginPage.inputPassword().type(password);
  });
  
  Then('User click "login" button', () => {
    LoginPage.buttonSubmit().click();
  });
  
  Then('User should navigate to Swag Labs Homepage', () => {
    cy.url().should('eq', 'https://www.saucedemo.com/inventory.html');
    cy.wait(5000);
  });

  // //Scenario for Login with invalid Password
  // When('I submit the invalid Password', () => {
  //   LoginPage.inputPassword().type('Kmzwa8awaa');
  // });

  // //error message invalid credential
  // Then('I should see an error message', () => {
  //   LoginPage.invalidCredentials().should('have.text', 'Invalid credentials');
  // });

  // //error message require
  // Then('I should see an require username message', () => {
  //   LoginPage.requireUsernameMessage().eq(0);
  // });
  // Then('I should see an require password message', () => {
  //   LoginPage.requirePasswordMessage().eq(1);
  // });

});