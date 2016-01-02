# 1.
# Write a program that checks if the sequence of characters "lab" exists
# in the following strings. If it does exist, print out the word.
# - "laboratory" - "experiment" - "Pans Labyrinth" - "elaborate" - "polar bear"

words = ["laboratory",
           "experiment",
           "Pans Labyrinth",
           "elaborate",
           "polar bear"]

words.each do |string|
  if string =~ /lab/
    puts string
  else
    puts "nope!"
  end
end

# 2.
# What will the following program print to the screen? What will it return?

  # def execute(&block)
  #  block
  # end

  # execute { puts "Hello from inside the execute method!" }

"This will print nothing and return a Proc."

# 3.
# What is exception handling and what problem does it solve?

"Exception handling is the process for managing errors. It solves the problem
that when code receives unpredictible input from the real world (i.e., user
input, or output from another program), the code needs a way of determining what
to do when it gets something it's not prepared for."

# 4.
# Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5.
# Why does the following code...

  # def execute(block)
  #   block.call
  # end

  # execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?

  # block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
  # from test.rb:5:in `<main>'

"This error occurs because the method is looking for some argument other than a
block. In order to pass a block as an argument, the parameter would need to
begin with an amperand, i.e., &block."
