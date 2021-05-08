#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#language: en
Feature: Hotel Planisphere Member Regist Feature.

    Scenario: open the regist page with Android Emulator.
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
        Then wait "2" second

		Scenario Outline: Confirmation of original member
				When Click Navigation button
        When Click link "Login"
#        Then "2"秒待つ
				And  input <email> into mail address area
				And  input <password> into password area
    		When  push Login button
				Then  Displayed <username> in username area
				Then  Displayed <rank> in membership rank area
				Then  Displayed <address> in address area
				Then  Displayed <tel> in telephone number area
				Then  Displayed <gender> in gender area
				Then  Displayed <birthday> in birthday area
				Then  Displayed <notification> in notification area

				When Click Navigation button
				When Logout

        Then wait "2" second

				Examples:
				|email                |password  |confirm   |username         |rank     |address       |tel          |gender            |birthday    |notification  |
				|"clark@example.com"|"password" |"password" |"Clark Evans"    |"Premium"|"Mountain View, California"|"01234567891"|"male"            |""                 |"received"    |
				|"diana@example.com"|"pass1234" |"pass1234" |"Diana Johansson"|"Normal" |"Redmond, Washington"      |""           |"female"          |"01/04/2000"    |"not received"|
				|"ororo@example.com"|"pa55w0rd!"|"pa55w0rd!"|"Ororo Saldana"  |"Premium"|"Cupertino, California"    |"01212341234"|"other"           |"17/12/1988"|"not received"|
				|"miles@example.com"|"pass-pass"|"pass-pass"|"Miles Boseman"  |"Normal" |"not answered"             |"01298765432"|"I do not answer."|"31/08/1992"  |"received"|

	Scenario: test end
        When close test scenario
