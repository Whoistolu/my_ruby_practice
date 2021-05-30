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

    #capitalize

"hello".capitalize #=> "Hello"
#include?

"hello".include?("lo")  #=> true

"hello".include?("z")   #=> false
#upcase

"hello".upcase  #=> "HELLO"
#downcase

"Hello".downcase  #=> "hello"
#empty?

"hello".empty?  #=> false

"".empty?       #=> true
#length

"hello".length  #=> 5
#reverse

"hello".reverse  #=> "olleh"
#split

"hello world".split  #=> ["hello", "world"]

"hello".split("")    #=> ["h", "e", "l", "l", "o"]
#strip

" hello, world   ".strip  #=> "hello, world"

"he77o".sub("7", "l")           #=> "hel7o"

"he77o".gsub("7", "l")          #=> "hello"

"hello".insert(-1, " dude")     #=> "hello dude"

"hello world".delete("l")       #=> "heo word"

"!".prepend("hello, ", "world") #=> "hello, world!"

Converting other objects to strings
Using the to_s method, you can convert pretty much anything to a string. Here are some examples:

5.to_s        #=> "5"

nil.to_s      #=> ""

:symbol.to_s  #=> "symbol"

Create a Symbol
To create a symbol, simply put a colon at the beginning of some text:

:my_symbol

Symbols vs. Strings

"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true

Symbols vs. Strings
To get a better idea of how symbols are stored in memory, give this a whirl in irb or a REPL. The  https://ruby-doc.org/core-2.7.1/Object.html#method-i-object_id

"anything".reverse
In this case, #reverse is a built-in method for String objects.

However, there are also some built-in methods that Ruby makes globally accessible, such as print and puts. These methods are called with just their name and any arguments. (If you’re super curious, these methods are made globally available by the Kernel module through the Object class, but that’s far more than you need to know right now.)

puts "anything" #=> anything
It’s worth noting that in most languages, arguments are passed to methods by wrapping them in parentheses (). In Ruby, however, the parentheses are generally optional. We could rewrite the above code as puts("anything"), which Ruby would interpret in the same way.

Creating a Method
You can create your own custom methods in Ruby using the following syntax:

def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"
Let’s break this example down:

def is a built-in keyword that tells Ruby that this is the start of a method definition.
my_name is the name of your new method. You can name your methods almost anything you want, but there are some constraints and conventions, which are described in the next section.
"Joe Smith" is the code inside the method body. All of the logic for your method is contained in the indented lines of the method body. This particular method returns a string when the method is called.
end is a built-in keyword that tells Ruby that this is the end of the method definition.
To call the method, you simply need to use its name, as shown in the last line of the example.
Method Names
As mentioned above, you can name your methods almost anything you want, but you shouldn’t pick names haphazardly. There are certain conventions that are recommended in order to improve the readability and maintainability of your code.

Your method names can use numbers, capital letters, lowercase letters, and the special characters _, ?, !, and =. Just like with variable names in Ruby, the convention for a method name with multiple words is to use snake_case, separating words with underscores.

Here are some things you are not allowed to do with your method names:

You cannot name your method one of Ruby’s approximately 40 reserved words, such as end, while, or for. Checkout the full list here.
You cannot use any symbols other than _, ?, !, and =.
You cannot use ?, !, or = anywhere other than at the end of the name.
You cannot begin a method name with a number.
Here are some examples of valid and invalid method names:

method_name      # valid
_name_of_method  # valid
1_method_name    # invalid
method_27        # valid
method?_name     # invalid
method_name!     # valid
begin            # invalid (Ruby reserved word)
begin_count      # valid
Can you tell why some of these names are invalid?

In general, short but descriptive is the name of the naming game. You want to be able to tell what a method is expected to do based on its name, so please don’t name your method do_stuff.

If your method does so many things that you feel it requires a very long name, then your method should probably be broken up into several smaller and simpler methods. Ideally, each method should do only one thing. This practice will pay dividends down the road in terms of readability, scalability, and maintainability. (It also makes testing your code a lot easier, which will be covered in a later lesson.)