For each exercise, there is a file with method definitions and a small "app" file which requires this file and calls the methods. The spec files also require the files with the method definitions and test them.

# How to run the code

Run the app file of each exercice. For example:

    ruby lib/mairie_christmas.rb

# How to test the code

run `rspec`

# description of the code

## dark_trader

### dark_trader.rb

The first method is fetching the list through the XPath. 

The second method is extracting & cleaning the name & the price of each rows, and putting them in an array.

### dark_trader_app.rb

`data` is a variable, `get_data` is a method, `currency_and_price_data` is the array with the content, `currency_and_price` is the method defined in the `dark_trader.rb file`. 

### dark_trader_spec.rb :

The first test checks the output. 

The second test checks the value of the name & checks if the price is numeric (as the price changes we can't check one price in particular).   

## mairie_christmas

### mairie_christmas.rb 

The first method fetches the url extention for each link of the page through the XPath.

The second method uses the links gathered to get the name & the email of each city, using the XPath.

### mairie_christmas_app.rb

Create the array `list` which gathers the data (names & emails).

### mairie_christmas_spec.rb

The first test checks the output. 

The second & third tests check if the values for a couple randomly chosen ones are as expected.  

## deputee

### deputees.rb

The first method fetches the links to each page through the css link.  

The second method gathers the data from each page, and extract the first name, last name, and email in a hash.  

### deputees_app.rb

Creates the array containing the data from the `deputees.rb` file. 

### deputees_spec.rb

The first test checks in hard code the data of one deputee. 

The second test checks the number of links. 

