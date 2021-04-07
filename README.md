# Bank Tech Test #

## How to use this program: ##
Clone this project into a directory on your computer:
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
Create a new bank account:
```
account = BankAccount.new
```
Deposit into the account e.g. deposit 500:
```
account.deposit(500)
```
Withdraw from the account e.g. withdraw 200:
```
account.deposit(200)
```
View all transactions:
```
account.print_statement
```
![Screenshot 2021-04-07 at 12 14 08](https://user-images.githubusercontent.com/75983723/113857733-c8874c80-979a-11eb-9ff7-aaa3d1291280.png)
