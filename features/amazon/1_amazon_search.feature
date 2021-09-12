Feature: Searching Amazon

Background: 
Given I am on the amazon uk website


Scenario: Search for best gaming laptop by average customer rating
When I search for gaming laptops by average customer ratings
Then the best rated choice will be displayed on top
