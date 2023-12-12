Feature: Testing booking functionality in the makemytrip application

Scenario: user search a train using valid search details
Given User launch the application
When User selects the train option to travel
And User checks on round trip as option
And User enter "Chennai, India" as source city
And User enter "Delhi, India" as destination city
And User enter the departure date
And User enter the return date
And User click on the search button
Then User navigates to train details page

Scenario: User filter the trains that has the lowest price and minimul travelling time  
Given user view number of trains with unordered
When User filter the low to high option from the drop down
And User counts the number of trains in the filtered list
And User retrieves price details from each train
And User select the fastest train from the filtered list
And User select the evening train if duplicate set of lowest price and fastest train
Then User verifies that the selected option is lowest and fastest

Scenario: User select the train the lowest price, fastest and book the same
Given User view the info of the selected train
When User click on radio button of selected train
And User click on Book button for booking the same train
Then User verifies the booking details

