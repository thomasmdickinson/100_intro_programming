# 5.
# Look at the following programs...

  # x = 0
  # 3.times do
  #   x += 1
  # end
  # puts x

# and...

  # y = 0
  # 3.times do
  #  y+= 1
  #  x = y
  # end
  # puts x

# What does x print to the screen in each case? Do they both give errors?
# Are the errors different? Why?

"In the first case, x prints 3 to the screen. In the second case, it gives an
error, because x is defined inside the block and is therefore not available
when we attempt to print it."

# 6.
# What does the following error message tell you?

  # NameError: undefined local variable or method `shoes' for main:Object
  #  from (irb):3
  #  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

"This error message indicates that we tries to use a variable 'shoes' which
had not been previously defined. It could be that it was defined inside a block
or method outside of the scope of where it is being called."
