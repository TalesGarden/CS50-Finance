# CS50's Finance

All Instruction to construct this project can be found in [Finance](https://cs50.harvard.edu/x/2021/psets/9/finance/)

## Introduction
This is pset7 from the HarvardX course CS50: Introduction to Computer Science.
I was supposed to create new functions and templates for buying, selling and quoting stock prices, as well as a portfolio page.

The exercise proposes the following implemntation:

1. `register`: Allows a user to "register" on the site. The username and password are submitted via Flask and stored in a sqlite 3 database
2. `quote`: Allows a user to look up the price of a stock using the symbol
3. `buy`: Allows a user to buy the imaginary stock; Purchased stocks are saved to the database and money balance is updated
4. `index`: Displays an HTML summary table of the user's current funds and stocks
5. `sell`: Allows a user to sell stocks; Sold stocks are removed from the database and the money balance is updated
6. `history`: Displays an HTML table showing the transaction history for the user
## Created with
This application uses Python, HTML and styling with Bootstrap. It also uses [IEX API](https://iexcloud.io/) to get the stocks values in real time and a SQL database to store users information, such as username, a hash of the password, the stocks they bought or sold and the history.

## Run
You will need [Python](https://www.python.org/downloads/) and [Flask](https://flask.palletsprojects.com/en/1.1.x/installation/) installed on your computer to run this application.

Start by installing [Python 3](https://www.python.org/downloads/). Here's a [guide on the installation](https://wiki.python.org/moin/BeginnersGuide/Download).
Once you have Python, and clonned this repository, run the following commands:

To install pip, run:

`sudo apt install python3-pip`

To install Flask, run:

`sudo apt install python3-flask`

To install this project's dependecies, run:

`pip3 install -r requirements.txt`

Define the correct file as the default Flask application:

Unix Bash (Linux, Mac, etc.):

`export FLASK_APP=application.py`

Windows CMD:

`set FLASK_APP=application.py`

Windows PowerShell:

`$env:FLASK_APP = "application.py"`

Run Flask and you're good to go!

`flask run`
