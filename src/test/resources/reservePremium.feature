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

	Scenario: Premium member case by Nexus 10
    		Given The mobile device is chosen in "Nexus_10_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
				Then wait "3" second
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC015 Premium member stay plan test case
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
#TC015_Nexus_10_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Staying without meals"    |"Thursday" |"9" |"1"       |"off"    |"off"         |"off"       |""      |"By telephone" |"" |""   |"off"   |"Single"            |"522.50" |"portrait"|
		|"Business trip"            |"Sunday"   |"1" |"2"       |"on"     |"on"          |"off"       |""      |"By telephone" |"" |""   |"off"   |"Single"            |"227.50" |"portrait"|
		|"With private onsen"       |"Wednesday"|"3" |"6"       |"on"     |"off"         |"on"        |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"1860.00"|"landscape"|
		|"Economical"               |"Wednesday"|"1" |"9"       |"on"     |"off"         |"off"       |""      |"By telephone" |"" |""   |"144chr"|"choice room freely"|"630.00" |"landscape"|
		|"Premium plan"             |"Tuesday"  |"1" |"9"       |"on"     |"off"         |"on"        |""      |"I don't need."|"" |""   |"off"   |"Premium Twin"      |"1080.00"|"portrait"|

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


	Scenario: Premium member case by Nexus 4
    		Given The mobile device is chosen in "Nexus_4_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
				Then wait "3" second
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC016 Premium member stay plan test case
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
#TC016_Nexus_4_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Economical"               |"Sunday"   |"1" |"1"       |"on"     |"on"          |"on"        |""      |"By email"     |"" |""   |"144chr"|"choice room freely"|"105.00" |"landscape"|
		|"For honeymoon"            |"Tuesday"  |"2" |"2"       |"on"     |"on"          |"on"        |""      |"By email"     |"" |""   |"off"   |"Premium Twin"      |"400.00" |"landscape"|
		|"With dinner"              |"Friday"   |"3" |"4"       |"on"     |"on"          |"on"        |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"1390.00"|"landscape"|
		|"With complimentary ticket"|"Wednesday"|"5" |"9"       |"off"    |"off"         |"off"       |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"4950.00"|"portrait"|
		|"Premium plan"             |"Wednesday"|"1" |"9"       |"off"    |"on"          |"off"       |""      |"By email"     |"" |""   |"off"   |"Premium Twin"      |"990.00" |"landscape"|

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


	Scenario: Premium member case by Nexus 6
    		Given The mobile device is chosen in "Nexus_6_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
				Then wait "3" second
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC017 Premium member stay plan test case
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
#TC017_Nexus_6_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Economical"               |"Tuesday"  |"1" |"1"       |"on"     |"off"         |"off"       |""      |"I don't need."|"" |""   |"144chr"|"choice room freely"|"70.00"  |"portrait"|
		|"With complimentary ticket"|"Monday"   |"5" |"1"       |"on"     |"on"          |"off"       |""      |"By telephone" |"" |""   |"off"   |"choice room freely"|"560.00" |"landscape"|
		|"Business trip"            |"Friday"   |"1" |"1"       |"on"     |"on"          |"on"        |""      |"I don't need."|"" |""   |"off"   |"Single"            |"105.00" |"portrait"|
		|"With private onsen"       |"Friday"   |"1" |"1"       |"off"    |"on"          |"off"       |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"100.00" |"landscape"|
		|"Premium plan"             |"Sunday"   |"1" |"2"       |"off"    |"off"         |"off"       |""      |"By email"     |"" |""   |"off"   |"Premium Twin"      |"250.00" |"landscape"|
		|"With dinner"              |"Saturday" |"3" |"4"       |"off"    |"on"          |"off"       |""      |"I don't need."|"" |""   |"144chr"|"choice room freely"|"1230.00"|"portrait"|
		|"Plan with special offers" |"Wednesday"|"1" |"9"       |"on"     |"on"          |"off"       |""      |"By telephone" |"" |""   |"144chr"|"Standard Twin"     |"810.00" |"landscape"|

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


	Scenario: Premium member case by Nexus 9
    		Given The mobile device is chosen in "Nexus_9_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
				Then wait "3" second
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC018 Premium member stay plan test case
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
#TC018_Nexus_9_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Economical"               |"Monday"   |"1" |"1"       |"on"     |"on"          |"off"       |""      |"By telephone" |"" |""   |"off"   |"choice room freely"|"80.00"  |"landscape"|
		|"With dinner"              |"Tuesday"  |"3" |"4"       |"off"    |"on"          |"off"       |""      |"By telephone" |"" |""   |"144chr"|"choice room freely"|"1060.00"|"portrait"|
		|"With beauty salon"        |"Saturday" |"1" |"6"       |"off"    |"on"          |"on"        |""      |"I don't need."|"" |""   |"144chr"|"choice room freely"|"795.00" |"landscape"|
		|"Premium plan"             |"Monday"   |"1" |"9"       |"off"    |"on"          |"off"       |""      |"By telephone" |"" |""   |"off"   |"Premium Twin"      |"990.00" |"portrait"|

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


	Scenario: Premium member case by Pixel 3 XL
    		Given The mobile device is chosen in "Pixel_3_XL_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
				Then wait "3" second
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC019 Premium member stay plan test case
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
#TC019_Pixel_3_XL_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"With beauty salon"        |"Wednesday"|"9" |"1"       |"on"     |"on"          |"off"       |""      |"By email"     |"" |""   |"144chr"|"choice room freely"|"955.00" |"landscape"|
		|"Economical"               |"Friday"   |"1" |"1"       |"on"     |"on"          |"off"       |""      |"By email"     |"" |""   |"off"   |"choice room freely"|"80.00"  |"portrait"|
		|"Plan with special offers" |"Tuesday"  |"1" |"1"       |"on"     |"on"          |"on"        |""      |"By email"     |"" |""   |"144chr"|"Standard Twin"     |"100.00" |"portrait"|
		|"Business trip"            |"Saturday" |"1" |"1"       |"on"     |"on"          |"on"        |""      |"By email"     |"" |""   |"off"   |"Single"            |"123.75" |"portrait"|
		|"Premium plan"             |"Thursday" |"1" |"2"       |"on"     |"on"          |"on"        |""      |"By telephone" |"" |""   |"off"   |"Premium Twin"      |"260.00" |"portrait"|

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


	Scenario: Premium member case by Pixel 4 XL
    		Given The mobile device is chosen in "Pixel_4_XL_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
				Then wait "3" second
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC020 Premium member stay plan test case
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
#TC020_Pixel_4_XL_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"With beauty salon"        |"Thursday" |"1" |"6"       |"on"     |"off"         |"off"       |""      |"I don't need."|"" |""   |"off"   |"choice room freely"|"600.00" |"portrait"|
		|"Premium plan"             |"Friday"   |"9" |"9"       |"off"    |"off"         |"on"        |""      |"By email"     |"" |""   |"off"   |"Premium Twin"      |"8865.00" |"portrait"|

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


	Scenario: Premium member case by Pixel C
    		Given The mobile device is chosen in "Pixel_C_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
				Then wait "3" second
        When Click link "Login"
        And  input "clark@example.com" into mail address area
        And  input "password" into password area
        When  push Login button
        And get mail address and username and telephonenumber
    		Then wait "2" second
				When Click Navigation button
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC021 Premium member stay plan test case
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
#TC021_Pixel_C_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username|Contact        |tel|email|Request |Room type           |Total price|orientation|
		|"Premium plan"             |"Saturday" |"1" |"2"       |"on"     |"off"         |"off"       |""      |"I don't need."|"" |""   |"144chr"|"Premium Twin"      |"270.00" |"landscape"|

	Scenario: return to home
#				When Click Navigation button
#       Then wait "1" second
	  		When  Return to HOME
#				When Click Navigation button
        Then wait "1" second
        When Logout
        Then wait "1" second
        When close test scenario
