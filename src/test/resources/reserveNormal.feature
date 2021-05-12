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

Feature: Reserve feature
	Background: Quotation is different in weekend charge rise application depending on a day of the week in the stay first day and stay terms. An option is extra charge. The total quotation is decided by the stay terms, head counts, and the options.

	Scenario: Normal member case by Nexus 10
    		Given The mobile device is chosen in "Nexus_10_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC008 Normal member stay plan test case
				When device orientation set in <orientation>
        Then wait "1" second
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation
				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation
        Then wait "2" second

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation
        Then wait "2" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC008_Nexus_10_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Plan with special offers" |"Friday"   |"1" |"1"       |"on"     |"on"          |"off"       |""      |"By telephone" |"" |""   |"144chr"|"Standard Twin"     |"90.00"  |"landscape"|
		|"With complimentary ticket"|"Monday"   |"1" |"1"       |"off"    |"on"          |"on"        |""      |"By telephone" |"" |""   |"off"   |"choice room freely"|"120.00" |"portrait"|
		|"With dinner"              |"Sunday"   |"3" |"4"       |"on"     |"off"         |"off"       |""      |"By email"     |"" |""   |"144chr"|"choice room freely"|"1225.00"|"landscape"|
		|"With beauty salon"        |"Friday"   |"1" |"6"       |"off"    |"on"          |"off"       |""      |"By telephone" |"" |""   |"144chr"|"choice room freely"|"600.00" |"landscape"|

	Scenario: return to home
#				When Click Navigation button
#       Then wait "1" second
	  		When  Return to HOME
#				When Click Navigation button
#        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Normal member case by Nexus 4
    		Given The mobile device is chosen in "Nexus_4_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC009 Normal member stay plan test case
				When device orientation set in <orientation>
        Then wait "1" second
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation
				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation
        Then wait "2" second

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation
        Then wait "2" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC009_Nexus_4_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Staying without meals"    |"Saturday" |"1" |"1"       |"on"     |"off"         |"on"        |""      |"By telephone" |"" |""   |"off"   |"Single"            |"88.75"  |"landscape"|
		|"Business trip"            |"Wednesday"|"9" |"2"       |"on"     |"on"          |"on"        |""      |"By telephone" |"" |""   |"144chr"|"Single"            |"1645.00"|"portrait"|

	Scenario: return to home
				When Click Navigation button
        Then wait "1" second
	  		When  Return to HOME
				When Click Navigation button
        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Normal member case by Nexus 6
    		Given The mobile device is chosen in "Nexus_6_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC010 Normal member stay plan test case
				When device orientation set in <orientation>
        Then wait "1" second
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation
				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation
        Then wait "2" second

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation
        Then wait "2" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC010_Nexus_6_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"For honeymoon"            |"Thursday" |"2" |"2"       |"on"     |"on"          |"on"        |""      |"I don't need."|"" |""   |"144chr"|"Premium Twin"      |"400.00" |"landscape"|
		|"Staying without meals"    |"Monday"   |"9" |"2"       |"on"     |"on"          |"on"        |""      |"By email"     |"" |""   |"144chr"|"Single"            |"1265.00"|"landscape"|

	Scenario: return to home
				When Click Navigation button
        Then wait "1" second
	  		When  Return to HOME
				When Click Navigation button
        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Normal member case by Nexus 9
    		Given The mobile device is chosen in "Nexus_9_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC011 Normal member stay plan test case
				When device orientation set in <orientation>
        Then wait "1" second
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation
				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation
        Then wait "2" second

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation
        Then wait "2" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC011_Nexus_9_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Plan with special offers" |"Thursday" |"1" |"1"       |"off"    |"off"         |"off"       |""      |"By telephone" |"" |""   |"144chr"|"Standard Twin"     |"70.00"  |"landscape"|
		|"With dinner"              |"Friday"   |"1" |"1"       |"off"    |"on"          |"on"        |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"105.00" |"portrait"|
		|"For honeymoon"            |"Saturday" |"2" |"2"       |"on"     |"on"          |"on"        |""      |"I don't need."|"" |""   |"144chr"|"Premium Twin"      |"480.00" |"portrait"|
		|"With complimentary ticket"|"Tuesday"  |"5" |"9"       |"on"     |"on"          |"on"        |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"5355.00"|"portrait"|

	Scenario: return to home
				When Click Navigation button
        Then wait "1" second
	  		When  Return to HOME
				When Click Navigation button
        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Normal member case by Pixel 3 XL
    		Given The mobile device is chosen in "Pixel_3_XL_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC012 Normal member stay plan test case
				When device orientation set in <orientation>
        Then wait "1" second
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation
				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation
        Then wait "2" second

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation
        Then wait "2" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC012_Pixel_3_XL_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"With dinner"              |"Thursday" |"1" |"4"       |"on"     |"on"          |"on"        |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"460.00" |"portrait"|

	Scenario: return to home
				When Click Navigation button
        Then wait "1" second
	  		When  Return to HOME
				When Click Navigation button
        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Normal member case by Pixel 4 XL
    		Given The mobile device is chosen in "Pixel_4_XL_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC013 Normal member stay plan test case
				When device orientation set in <orientation>
        Then wait "1" second
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation
				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation
        Then wait "2" second

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation
        Then wait "2" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC013_Pixel_4_XL_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Economical"               |"Thursday" |"1" |"1"       |"off"    |"off"         |"on"        |""      |"By telephone" |"" |""   |"144chr"|"choice room freely"|"70.00"  |"portrait"|
		|"With private onsen"       |"Tuesday"  |"1" |"1"       |"on"     |"on"          |"off"       |""      |"By telephone" |"" |""   |"144chr"|"choice room freely"|"110.00" |"landscape"|
		|"For honeymoon"            |"Wednesday"|"2" |"2"       |"off"    |"off"         |"off"       |""      |"I don't need."|"" |""   |"144chr"|"Premium Twin"      |"320.00" |"landscape"|
		|"With dinner"              |"Monday"   |"3" |"4"       |"off"    |"on"          |"off"       |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"1060.00"|"portrait"|

	Scenario: return to home
				When Click Navigation button
        Then wait "1" second
	  		When  Return to HOME
				When Click Navigation button
        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Normal member case by Pixel C
    		Given The mobile device is chosen in "Pixel_C_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
        When Click link "Login"
        And  input "miles@example.com" into mail address area
        And  input "pass-pass" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC014 Normal member stay plan test case
				When device orientation set in <orientation>
        Then wait "1" second
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When  user selects the check in day of the week as <First day>
        Then wait "1" second
				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				And  user selects <Contact> and inputs <tel> as Telephone number or inputs <email> as mail address
				When user inputs <Request> as Special request
				When record the reservation
				Then test Total-Bill <Total price>
				Then test Room-type <Room type>

				When click confirm reservation
        Then wait "2" second

				Then test Total-Bill <Total price>
				Then test stay dates
				Then test Guests as <Head count> person
				Then test Additional plans as <Breakfast> or <Early check in> or <Sight seeing>
				Then test Name as <username>
				Then test Confirmation as <Contact> and telephone as <tel> or mailadress as <email>
				Then test Special Request as <Request>

				When click Submit Reservation
        Then wait "2" second

				Then test popup message as "Thank you for reserving." and "We look forward to visiting you."
				When click close button
				Then Switch to parent tab
#TC014_Pixel_C_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"With complimentary ticket"|"Friday"   |"5" |"1"       |"on"     |"off"         |"off"       |""      |"I don't need."|"" |""   |"144chr"|"choice room freely"|"600.00" |"landscape"|
		|"For honeymoon"            |"Sunday"   |"2" |"2"       |"off"    |"off"         |"on"        |""      |"By telephone" |"" |""   |"144chr"|"Premium Twin"      |"380.00" |"landscape"|
		|"Staying without meals"    |"Friday"   |"1" |"2"       |"on"     |"on"          |"off"       |""      |"By telephone" |"" |""   |"off"   |"Single"            |"150.00" |"landscape"|
		|"With dinner"              |"Wednesday"|"1" |"4"       |"off"    |"on"          |"on"        |""      |"I don't need."|"" |""   |"144chr"|"choice room freely"|"420.00" |"portrait"|
		|"With beauty salon"        |"Tuesday"  |"1" |"6"       |"on"     |"off"         |"on"        |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"660.00" |"landscape"|
		|"Economical"               |"Saturday" |"9" |"9"       |"off"    |"off"         |"off"       |""      |"By telephone" |"" |""   |"off"   |"choice room freely"|"5400.00"|"portrait"|
		|"Plan with special offers" |"Sunday"   |"9" |"9"       |"off"    |"on"          |"on"        |""      |"By email"     |"" |""   |"off"   |"Standard Twin"     |"6322.50"|"portrait"|

	Scenario: return to home
				When Click Navigation button
        Then wait "1" second
	  		When  Return to HOME
				When Click Navigation button
        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
