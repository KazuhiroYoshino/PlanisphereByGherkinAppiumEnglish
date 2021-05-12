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

	Scenario: Guest user case by Nexus 10
    		Given The mobile device is chosen in "Nexus_10_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC001 the room charge test when being the Guest user
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				When  user selects the check in day of the week as <First day>
        Then wait "1" second
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
#TC001_Nexus_10_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|orientation|
		|"For honeymoon"            |"Monday"   |"2" |"2"       |"on"     |"on"          |"on"        |"KagetoraNagao" |"I don't need."|""           |""                   |"144chr"|"Premium Twin"      |"400.00" |"landscape"|
		|"With complimentary ticket"|"Saturday" |"5" |"9"       |"on"     |"on"          |"on"        |"KagetoraNagao" |"I don't need."|""           |""                   |"144chr"|"choice room freely"|"5580.00"|"landscape"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Guest user case by Nexus 4
    		Given The mobile device is chosen in "Nexus_4_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC002 the room charge test when being the Guest user
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				When  user selects the check in day of the week as <First day>
        Then wait "1" second
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
#TC002_Nexus_4_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|orientation|
		|"Plan with special offers" |"Monday"   |"1" |"1"       |"off"    |"off"         |"off"       |"HarunobuTakeda"|"I don't need."|""           |""                   |"off"   |"Standard Twin"     |"70.00"  |"portrait"|
		|"With beauty salon"        |"Monday"   |"1" |"6"       |"on"     |"on"          |"off"       |"MasatoraSanada"|"I don't need."|""           |""                   |"144chr"|"choice room freely"|"660.00" |"landscape"|
		|"With private onsen"       |"Thursday" |"3" |"6"       |"on"     |"on"          |"on"        |"MasatoraSanada"|"I don't need."|""           |""                   |"off"   |"choice room freely"|"2055.00"|"portrait"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Guest user case by Nexus 6
    		Given The mobile device is chosen in "Nexus_6_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC003 the room charge test when being the Guest user
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				When  user selects the check in day of the week as <First day>
        Then wait "1" second
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
#TC003_Nexus_6_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|orientation|
		|"With beauty salon"        |"Sunday"   |"9" |"6"       |"off"    |"off"         |"on"        |"KantaYamamoto" |"I don't need."|""           |""                   |"off"   |"choice room freely"|"5325.00"|"portrait"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Guest user case by Nexus 9
    		Given The mobile device is chosen in "Nexus_9_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC004 the room charge test when being the Guest user
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				When  user selects the check in day of the week as <First day>
        Then wait "1" second
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
#TC004_Nexus_9_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                 |Request |Room type           |Total price|orientation|
		|"Business trip"            |"Tuesday"  |"9" |"1"       |"off"    |"off"         |"off"       |"MasatoraSanada"|"By email"     |""           |"masatora@example.com"|"off"   |"Single"            |"712.50" |"landscape"|
		|"With private onsen"       |"Sunday"   |"1" |"1"       |"off"    |"on"          |"off"       |"MasatoraSanada"|"By telephone" |"12345678901"|""                    |"off"   |"choice room freely"|"122.50" |"portrait"|
		|"Staying without meals"    |"Wednesday"|"1" |"2"       |"on"     |"on"          |"on"        |"AikoNaoe"      |"I don't need."|""           |""                    |"144chr"|"Single"            |"170.00" |"landscape"|

	Scenario: return to home
#				When Click Navigation button
	  		When  Return to HOME
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Guest user case by Pixel 3 XL
    		Given The mobile device is chosen in "Pixel_3_XL_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC005 the room charge test when being the Guest user
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				When  user selects the check in day of the week as <First day>
        Then wait "1" second
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
#TC005_Pixel_3_XL_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email               |Request |Room type           |Total price|orientation|
		|"For honeymoon"            |"Sunday"   |"2" |"2"       |"off"    |"on"          |"on"        |"KazumasaUsami" |"By telephone" |"45678901234"|""                  |"off"   |"Premium Twin"      |"400.00" |"portrait"|
		|"Staying without meals"    |"Tuesday"  |"1" |"2"       |"off"    |"on"          |"on"        |"KazumasaUsami" |"I don't need."|""           |""                  |"144chr"|"Single"            |"150.00" |"portrait"|
		|"With private onsen"       |"Monday"   |"3" |"6"       |"off"    |"on"          |"off"       |"NobukoTakeda"  |"By email"     |""           |"nobuko@example.com"|"off"   |"choice room freely"|"1680.00"|"landscape"|
		|"With complimentary ticket"|"Thursday" |"5" |"9"       |"off"    |"off"         |"off"       |"AikoNaoe"      |"By email"     |""           |"aiko@example.com"  |"144chr"|"choice room freely"|"4950.00"|"landscape"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Guest user case by Pixel 4 XL
    		Given The mobile device is chosen in "Pixel_4_XL_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC006 the room charge test when being the Guest user
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				When  user selects the check in day of the week as <First day>
        Then wait "1" second
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
#TC006_Pixel_4_XL_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email              |Request |Room type           |Total price|orientation|
		|"Plan with special offers" |"Saturday" |"1" |"1"       |"on"     |"on"          |"on"        |"KantaYamamoto" |"By telephone" |"23456789012"|""                 |"144chr"|"Standard Twin"     |"117.50" |"landscape"|
		|"With complimentary ticket"|"Sunday"   |"5" |"1"       |"off"    |"on"          |"on"        |"KantaYamamoto" |"I don't need."|""           |""                 |"144chr"|"choice room freely"|"545.00" |"landscape"|
		|"Business trip"            |"Thursday" |"1" |"1"       |"on"     |"on"          |"off"       |"KantaYamamoto" |"By email"     |""           |"kanta@example.com"|"144chr"|"Single"            |"95.00"  |"portrait"|
		|"For honeymoon"            |"Friday"   |"2" |"2"       |"on"     |"on"          |"on"        |"IetokiKakizaki"|"By telephone" |"56789012345"|""                 |"off"   |"Premium Twin"      |"440.00" |"portrait"|
		|"Staying without meals"    |"Sunday"   |"1" |"2"       |"on"     |"off"         |"off"       |"IetokiKakizaki"|"By telephone" |"56789012345"|""                 |"144chr"|"Single"            |"157.50" |"landscape"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        Then wait "1" second
        When close test scenario
        Then wait "5" second


	Scenario: Guest user case by Pixel C
    		Given The mobile device is chosen in "Pixel_C_API_29"
    		When The mobile browser is started in English mode
        Given The webDriver is chosen in "Chrome"
#open Hotel Planisphere TOP page
        Given Page open "https://hotel.testplanisphere.dev/en-US/index.html"
				When Click Navigation button
        Then wait "3" second
				When Click link "Reserve"
        Then wait "5" second

	Scenario Outline: TC007 the room charge test when being the Guest user
				When device orientation set in <orientation>
        Then wait "1" second
				When user chooses <Plan name>
        Then wait "1" second

				Then  Get parent and child tabs
				Then  Switch to child tab

				When user inputs <Term> as stay
				When user inputs <Head count> as guests
				When user checks <Breakfast> as Breakfast
				When user checks <Early check in> as Early check in
				When user checks <Sight seeing> as Sight seeing
				When user inputs <username> as Name
				When  user selects the check in day of the week as <First day>
        Then wait "1" second
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
#TC007_Pixel_C_API_29
		Examples:
		|Plan name                  |First day  |Term|Head count|Breakfast|Early check in|Sight seeing|username        |Contact        |tel          |email                |Request |Room type           |Total price|orientation|
		|"Business trip"            |"Monday"   |"1" |"1"       |"on"     |"off"         |"on"        |"NobukoTakeda"|"By telephone"  |"34567890123"|""                  |"off"    |"Single"        |"95.00"  |"landscape"|
		|"With private onsen"       |"Saturday" |"3" |"1"       |"off"    |"on"          |"on"        |"NobukoTakeda"|"By email"|""           |"nobuko@example.com"|"144chr"|"choice room freely"    |"335.00" |"portrait"|
		|"For honeymoon"            |"Thursday" |"1" |"2"       |"off"    |"off"         |"on"        |"HarunobuTakeda"|"By telephone"  |"67890123456"|""                  |"off"    |"Premium Twin"|"180.00" |"portrait"|

	Scenario: return to home
				When Click Navigation button
	  		When  Return to HOME
        Then wait "1" second
        When close test scenario
