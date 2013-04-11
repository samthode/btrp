Feature: User Signup
	
	As a user (anyone who may use the system, to include persons outside the unit)
	I want sign up 
	So that I can access the website

	Scenario: sign up
		Given I have not yet signed up
		And I am on the homepage
		When I click the signup link
		Then I should be on the signup page 