

##Algorithms - numbers into words

This section is more of a problem solving exercise in code. The task is simple: the solution might not be.
The challenge here is to write a Ruby script that outputs every number from 1 (one) to 1,000,000 (one million), but the output should be in words. Example output is as follows:

one, two

...

one hundred and twelve
...

four hundred and seventeen thousand one hundred and
fifty four

four hundred and seventeen thousand one
hundred and fifty five
...

nine hundred and ninety nine thousand nine hundred
and ninety nine...

one million

### How the task was tackled

Created a basic testing environment using Rspec. Decided to create a Ruby class, and use class methods to solve the problem. The process was TDD, so test first then code.

Started by establishing hashes for the lower numbers that do not follow the 'normal' logic. i.e. 1 to 19, then the units of ten. 

Next created methods for hundreds, thousands and to handle the scenarios such as 'one hundred AND fifty thousand' etc. 

The program runs by passing a value to the 'string_builder' method, or in this case I have mapped values up to about 140000 just to show it is working.  

Finally I added a quick range method to map numbers to the class to check what is returned. I have halted the range at just over 100,000 as a million takes a while ! 

Rspec tests are passing and you can run the program by from the terminal when in the numbers_to_words directory using:
`````
ruby lib/numbers_to_words.rb
`````
Alternatively the 'rspec' command in the terminal will run the code and also show the tests passing. Take your pick!
