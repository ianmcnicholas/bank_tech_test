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
<img width="770" alt="Screenshot 2021-04-07 at 17 00 46" src="https://user-images.githubusercontent.com/75983723/113897515-dbae1280-97c2-11eb-943c-10ec1ec00402.png">

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
<img width="874" alt="Screenshot 2021-04-07 at 13 16 14" src="https://user-images.githubusercontent.com/75983723/113864978-77c82180-97a3-11eb-806d-f7f597c16365.png">

## Planning ##

This program was planned with three classes:
* The BankAccount class would handle the balance of the account, and call upon the other classes.
* The Transactions class would build a history of account transactions.
* The Statements class would take the history of transactions and format it for printing.
* Feature tests were conducted manually using IRB.
![Screenshot 2021-04-07 at 12 14 08](https://user-images.githubusercontent.com/75983723/113857733-c8874c80-979a-11eb-9ff7-aaa3d1291280.png)

## Approach and Assumptions ##

This program is a minimum viable product as per the specifications (see below).

The program is arranged such that a new account is created with a balance of 0, however if required this can be specified upon creation, e.g. with a starting balance of 50:
```
account = BankAccount.new(50)
```

The user is able to have a negative balance by withdrawing more than depositing, as it was not specified in the requirements to prevent this.

The program will produce an error if the user attempts to deposit or withdraw a zero or negative amount.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
