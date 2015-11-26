# 1.
# Add two strings together that, when concatenated, return your first and last
# name as your full name in one string.

  # "<Firstname> <Lastname>"

# For example, if your name is John Doe, think about how you can put "John" and
#{ }"Doe" together to get "John Doe".

'Tom ' + 'Dickinson'

# 2.
# Use the modulo operator, division, or a combination of both to take a 4 digit
# number and find 1) the thousands number 2) the hundreds 3) the tens and 4)
# and the ones.

def find_nums(num)
  puts "For the number #{num}, the thoudands number is #{num / 1000}, the hundreds number is #{num % 1000 / 100}, the tens number is #{num % 100 / 10}, and the ones number is #{num % 10}."
end

# 3.
# Write a program that uses a hash to store a list of movie titles with the
# year they came out. Then use the puts command to make your program print out
# the year of each movie to the screen.

sw_films = {
  star_wars: 1977, the_empire_strikes_back: 1980, return_of_the_jedi: 1983,
  the_phantom_menace: 1999, attack_of_the_clones: 2002, revenge_of_the_sith: 2005,
  the_force_awakens: 2015
}

puts sw_films.values

# 4.
# Use the dates from the previous example and store them in an array.
# Then make your program output the same thing as exercise 3.

sw_array = []

sw_films.values.each { |year| sw_array << year }

puts sw_array

# 5.
# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8

def factorial(num)
   (1..num).inject{|product,x| product * x }
end

factorial(5)
factorial(6)
factorial(7)
factorial(8)

#6.
# Write a program that calculates the squares of 3 float numbers of your
# choosing and outputs the result to the screen.

def square(float)
  puts float*float
end

square(44.32)
square(695493.11)
square(78.323)

#7. What does the following error message tell you?


# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

"This means that in an irb session, the user incorrectly used an end paren when
they were supposed to use an end curly brace. This could have been done while
creating a hash, or possibly while writing a single-line block."
