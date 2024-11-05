export default class LoginPage{
  static verifyLoginPage(){
    return cy.get('h5').contains('Login');
  }
  static inputUsername(){
    return cy.get('[id="user-name"]');
  }
  static inputPassword(){
    return cy.get('[id="password"]');
  }
  static buttonSubmit() {
    return cy.get('#login-button'); // Menggunakan ID langsung
  }  
  static verifyDashboardPage(){
    return cy.get('h6').contains('Products');
  }
  static invalidCredentials(){
    return cy.get('[class="oxd-alert-content oxd-alert-content--error"]');
  }
  static requireUsernameMessage(){
    return cy.get('.oxd-input-field-error-message');
  }
  static requirePasswordMessage(){
    return cy.get('.oxd-input-field-error-message');
  }
}