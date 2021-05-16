# Numbers

# Addition
1 + 1   #=> 2

# Subtraction
2 - 1   #=> 1

# Multiplication
2 * 2   #=> 4

# Division
10 / 5  #=> 2

# Exponent
2 ** 2  #=> 4
3 ** 4  #=> 81

# Modulus (find the remainder of division)
8 % 2   #=> 0  (8 / 2 = 4; no remainder)
10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)

# Integers and Floats

17 / 5    #=> 3, not 3.4
17 / 5.0  #=> 3.4

# Converting Number Types

# To convert an integer to a float:
13.to_f   #=> 13.0

# To convert a float to an integer:
13.0.to_i #=> 13
13.9.to_i #=> 13

# Some Useful Number Methods
# even

6.even? #=> true
7.even? #=> false

# odd

6.odd? #=> false
7.odd? #=> true

# strings
# concatination

# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"

# Substrings

"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"

"hello"[0, 4]   #=> "hell"

"hello"[-1]     #=> "o"

scape characters
Escape characters allow you to type in representations of whitespace characters and to include quotation marks inside your string without accidentally ending it. As a reminder, escape characters only work inside double quotation marks.

\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark

The best thing to do is play around with them in irb or a REPL.

    irb(main):001:0> puts "Hello \n\nHello"
    Hello
    
    Hello
    => nil
    Interpolation
    String interpolation allows you to evaluate a string that contains placeholder variables. This is a very useful and common technique, so you will likely find yourself using this often. Be sure to use double quotes so that string interpolation will work!
    
    name = "Odin"
    
    puts "Hello, #{name}" #=> "Hello, Odin"
    puts 'Hello, #{name}' #=> "Hello, #{name}"

    Just remember, strings have loads of methods provided to you for free, and you can find them all in the https://ruby-doc.org/core-2.7.1/String.html

    