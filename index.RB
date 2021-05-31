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

  Parameters and Arguments
Of course, not all methods are as simplistic as the my_name example method above. After all, what good are methods if you can’t interact with them? When you want to return something other than a fixed result, you need to give your methods parameters. Parameters are variables that your method will receive when it is called. You can have more meaningful and useful interactions with your methods by using parameters to make them more versatile.

def greet(name)
  "Hello, " + name + "!"
end

puts greet("John") #=> Hello, John!
In this example, name is a parameter that the greet method uses to return a more specific greeting. The method was called with the argument "John", which returns the string “Hello John!”

If you’re wondering what the differences are between an argument and a parameter, parameters act as placeholder variables in the template of your method, whereas arguments are the actual variables that get passed to the method when it is called. Thus, in the example above, name is a parameter and "John" is an argument. The two terms are commonly used interchangeably, though, so don’t worry too much about this distinction.

Default Parameters
What if you don’t always want to provide arguments for each parameter that your method accepts? That’s where default parameters can be useful. Going back to our simple example above, what happens if we don’t know the person’s name? We can change our greet method to use a default name of “stranger”:

def greet(name = "stranger")
  "Hello, " + name + "!"
end

puts greet("Jane") #=> Hello, Jane!
puts greet #=> Hello, stranger!
What Methods Return
An important detail that a programmer must learn is understanding what your methods return. Having a good understanding of what your methods are returning is an important part of debugging your code when things don’t behave as expected.

How do we tell our methods what to return? Let’s revisit our my_name example method:

def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"
Our my_name method returns “Joe Smith”. This may seem obvious because it’s the only thing inside the method. In most languages, however, such a method would not return anything because it does not have an explicit return statement, which is a statement that starts with the return keyword. The above example could just as easily be written with an explicit return:

def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"
Ruby is one of the few languages that offers implicit return for methods, which means that a Ruby method will return the last expression that was evaluated even without the return keyword. The last expression that was evaluated may or may not be the last line in the code, as you can see in the following example:

def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.
Here, the method’s return is dependent on the result of the if condition. If the argument is an even number, the expression inside the else statement never gets evaluated, so the even_odd method returns "That is an even number."

Even though Ruby offers the ease of using implicit returns, explicit returns still have a place in Ruby code. An explicit return (using the keyword return) essentially tells Ruby, “This is the last expression you should evaluate.” This example shows how using return stops the method from continuing:

def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name #=> "Joe Smith"
For example, an explicit return can be useful when you want to write a method that checks for input errors before continuing.

def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.
Now, try removing the explicit return from the method above. Does the method return what you expected?

Difference Between puts and return
A common source of confusion for new programmers is the difference between puts and return.

puts is a method that prints whatever argument you pass it to the console.
return is the final output of a method that you can use in other places throughout your code.
For example, we can write a method that calculates the square of a number and then puts the output to the console.

def puts_squared(number)
  puts number * number
end
This method only prints the value that it calculated to the console, but it doesn’t return that value. If we then write x = puts_squared(20), the method will print 400 in the console, but the variable x will be assigned a value of nil. (If you need a refresher on this, go back and review the Ruby Input and Output lesson.)

Now, let’s write the same method but with an implicit return instead of puts. (Using an explicit return will act exactly the same in this example.)

def return_squared(number)
  number * number
end
When we run the return_squared method, it won’t print any output to the console. Instead, it will return the result in a way that allows it to be used in the rest of your code. We can save the output of running this method in a variable (x in the code below) and use that variable in a variety of ways. If we would still like to see the result of the method in the console, we can puts that variable to the console using string interpolation.

x = return_squared(20) #=> 400
y = 100
sum = x + y #=> 500

puts "The sum of #{x} and #{y} is #{sum}."
#=> The sum of 400 and 100 is 500.