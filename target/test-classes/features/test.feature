Feature: print hello world

  Scenario: Hello world scenario
    * print 'hello world'
    * print 'hello Prime Automation'

  Scenario: declare and print variables

    * def balance = 200
    * def fee = 20
    * print 'Total amount ->' + (balance + fee + tax)

  Scenario: calculator scenario

    * def a = 200
    * def b = 20
    * def mul = 10
    * print 'mul ->' + (a*b)