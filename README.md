# CS50's Finance

All Instruction to construct this project can be found in [Finance](https://cs50.harvard.edu/x/2021/psets/9/finance/)

## Introduction
This is Problem Set 9  from the HarvardX course CS50: Introduction to Computer Science.
It was supposed to implement a website via which users can “buy” and “sell” stocks

The exercise proposes the following implemntation:

1. `register`: Allows a user to "register" on the site. 
2. `quote`: User can look up the price of a stock using the symbol
3. `buy`: After look to the symbol of the stock, the user can buy it. It will be save in dataBase 
4. `index`: Displays A table in HTML that shows all stocks purchased 
5. `sell`: sell stocks that the user has bought
6. `history`: shows all transactions made by the user

For each feature, the flask has a route. the route behaves like the controller in an MVC model
## DATABASE
the construction of tables for this problem can be found in [finance](CS50--Finance/tree/master/database)


## Data used
the stocks that users have access to are from uses [IEX API](https://iexcloud.io/). All information about buy or sell transactions are stored in database 

## Run
You will need [Python](https://www.python.org/downloads/) and [Flask](https://flask.palletsprojects.com/en/1.1.x/installation/) installed on your computer to run this application.

Windows CMD:

`set FLASK_APP=application.py`

Windows PowerShell:

`$env:FLASK_APP = "application.py"`

Run Flask and you're good to go!

`flask run`
