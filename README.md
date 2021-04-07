# Bank Tech Test #

## How to use this program: ##
Initialise git in your local directory:
```
git init
```
Clone this project into your local directory:
```
git clone https://github.com/ianmcnicholas/bank_tech_test.git
```
Navigate into the project folder:
```
cd bank_tech_test
```
Install the required gems:
```
bundle install
```
### To view the tests and coverage: ###
```
rspec
```
### To run the program: ###
```
irb
```
```
require './lib/bank_account.rb'
```
#### Create a new bank account: ####
```
account = BankAccount.new
```
#### Deposit into the account e.g. deposit 500: ####
```
account.deposit(500)
```
#### Withdraw from the account e.g. withdraw 200: ####
```
account.deposit(200)
```
#### View all transactions: ####
```
account.print_statement
```
#### Quit program: ####
```
quit
```
## Planning ##

This program was planned with three classes:
* The BankAccount class would handle the balance of the account, and call upon the other classes.
* The Transactions class would build a history of account transactions.
* The Statements class would take the history of transactions and format it for printing.
![Screenshot 2021-04-07 at 12 14 08](https://user-images.githubusercontent.com/75983723/113857733-c8874c80-979a-11eb-9ff7-aaa3d1291280.png)

## Approach and Assumptions ##

This program is a minimum viable product as per the specifications (see below).  
