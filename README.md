# Bank Tech Test
This is a practice tech test challenge, which aims to simulate a Bank. The user can interact with the code via IRB to deposit and withdraw money, as well as printing a bank statement to see their transaction history.

The original instructions for this challenge can be found here: https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md 


## Specification

### Requirements:
- You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You
  don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance Criteria:

- **Given** a client makes a deposit of 1000 on 10-01-2012
- **And** a deposit of 2000 on 13-01-2012
- **And** a withdrawal of 500 on 14-01-2012
- **When** she prints her bank statement
- **Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


## User Stories

```
As an Account Holder
So I can increase my bank balance
I would like to deposit money into my account 

As an Account Holder
So I can spend some money 
I would like to withdraw money from my account

As an Account Holder
So I can keep a track of my in-goings and out-goings 
I would like to print my bank statement to show the date, amount of the transaction and total balance

As an Account Holder
So I can easily see my latest deposit/withdrawal 
I would like my bank statement to print the most recent transaction first. 

Edge case:
-----------
As an Account Holder
So I do not go into a negative balance
I would like an error message if my withdrawl amount exceeds my current balance
```


## Planning

### Class Diagram

![class_diagram](/images/class_diagram.png) 


## Instructions

### Set-up

```
$ git clone https://github.com/Dhara-95/bank_tech_test.git
$ cd bank_tech_test
$ bundle install
```

### Run Code in REPL
To open IRB:
```
$ irb
```

To quit IRB:
```
$ exit
```

Example of running the code in IRB to deposit & withdraw money and print the statement:
![code_in_irb](/images/code_in_irb.png)

### Run Tests
***11 tests, 100% Test Coverage***

Test coverage will show in the terminal once 'rspec' command is run

```
$ rspec
```

### Run Code Linter

```
$ rubocop
```
