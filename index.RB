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