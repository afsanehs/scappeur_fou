#lib folder contains the file + the app file of each exercice, so we can define the methods & run them in the app & test them in the spec file 

#How to run the code : run the app file of each exercice

#How to test the code : run "rspec" at the top file 

##structure of the code : 

#1.dark_trader : 
#dark_trader.rb : 
#the first method, is fetching the list through the XPath 
#the second method, is extracting & cleaning the name & the price of each rows, and putting them in an array

#dark_trader_app.rb :
#require_relative :it's like copy-pasting the content of the file 
#data is a variable, get_data is a method, currency_and_price_data is the array with the content, currency_and_price is the fonction defined in the dark_trader.rb file 

#dark_trader_spec.rb :
#the first test checks the output 
#the second test checks the value of the name & checks if the price is numeric (as price changes we can't check one price in particular)  

#2.mairie_christmas : 
#mairie_christmas.rb : 
#the first method fetches the url extention for each link of the page through the XPath
#the second method uses the links gathered to get the name & the email of each city, using the XPath

#mairie_christmas_app.rb : 
#create the array "list" which gathers the data (names & emails)

#mairie_christmas_spec.rb : 
#the first test checks the output 
#the second & third tests check if the value in hard code are the same in the output  

#3.deputee
#deputees.rb : 
#the first method fetches the links to each page through css link 
#the second method gathers the data from each page, and extract the first name, last name, email in a hash  

#deputees_app.rb :
#creates the array containing the data from the deputees.rb file 

#deputees_spec.rb :
#the first test checks in hard code the data of one deputee 
#the second test checks the number of links 
