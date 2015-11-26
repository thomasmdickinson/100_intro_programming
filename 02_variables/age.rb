#2.
# Write a program called age.rb that asks a user how old they are
# and then tells them how old they will be in 10, 20, 30 and 40 years.

puts "How old are you?"

age = gets.chomp.to_i

futures = [10, 20, 30, 40]

futures.each do |how_many|
  puts "In #{how_many} years you will be:"
  puts age + how_many
end
