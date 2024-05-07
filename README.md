# StringCalculator

Welcome to your stringCalculator

## Installation

Steps to setup
#NOTE- This lib is not relesed on Rubygems
     -  Make sure latest ruby version 3 should be installed in the system

The first step is clone the repository and cd to the stringCalculator folder and run the dependency by following command



And then execute:

    $ bundle install

To Run Rspec 

```ruby
 $ rspec spec/stringCalculator_spec.rb

```


```
OutPut

```

jagadeesh@Jagadeeshs-MacBook-Pro stringCalculator % rspec spec/stringCalculator_spec.rb

StringCalculator
  has a version number
  StringCalculator#add
    given an empty string
      return 0 for empty string
    single numbers
      given '3'
        returns 3
      given '20'
        returns 20
    two numbers
      return value 3 for 1,2,2,1,3
      return value 10 for 3
3
3
1
      return 7 for 1
4,2
      return 7 for //;1;4;2
WARNING: Using the `raise_error` matcher without providing a specific error or message risks false positives, since `raise_error` will match when Ruby raises a `NoMethodError`, `NameError` or `ArgumentError`, potentially allowing the expectation to pass without even executing the method you are intending to call. Actual error raised was #<RuntimeError: Negativies not allowed:-1>. Instead consider providing a specific error class or message. This message can be suppressed by setting: `RSpec::Expectations.configuration.on_potential_false_positives = :nothing`. Called from /Users/jagadeesh/jagadeesh/2024/ruby/stringCalculator/spec/stringCalculator_spec.rb:59:in `block (4 levels) in <top (required)>'.
      raise error for negative number
      raise error for negative numbers with message for -1,2,-9
      Number bigger then 1000 should ignored for 1,1001
      Number bigger then 1000 should ignored for 1,1001, 2000, 3, 1002, 1
      Allow multiple uniform delimiters like //***
3***7***1
      Allow multiple uniform delimiters with negative values like //***
3***-7***1***-10
      Allow mutiple nonuniform delimiters like ///****
24;1***;5
      Allow mutiple nonuniform delimiters with negative values like ///****
-24;1***;5
      Allow mutiple nonuniform delimiters with negative values like ///*-**
24;1***;5
      given '3,4'
        returns 7
      given '15,100'
        returns 115

Finished in 0.00282 seconds (files took 0.0776 seconds to load)
19 examples, 0 failures




