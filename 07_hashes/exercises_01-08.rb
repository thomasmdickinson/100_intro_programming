# 1.
# Given a hash of family members, with keys as the title and an array of names
# as the values, use Ruby's built-in select method to gather only immediate
# family members' names into a new array.

  # Given

  # family = {  uncles: ["bob", "joe", "steve"],
  #             sisters: ["jane", "jill", "beth"],
  #             brothers: ["frank","rob","david"],
  #             aunts: ["mary","sally","susan"]
  #          }

immediate_filter = family.select do |k,v|
  k == :sisters || k == :brothers
end

immediate_family = immediate_filter.values.flatten

# 2.
# Look at Ruby's merge method. Notice that it has two versions.
# What is the difference between merge and merge!?

"merge creates a new hash. merge! mutates the caller."

# Write a program that uses both and illustrate the differences.

jedi = {luke: "Mark Hammill", obi_wan: "Alec Guinness" }
smugglers = {han: "Harrison Ford", lando: "Billy Dee Williams" }

puts jedi.merge(smugglers)
puts jedi

puts jedi.merge!(smugglers)
puts jedi

# 3.
# Using some of Ruby's built-in Hash methods, write a program that loops
# through a hash and prints all of the keys.

sw_films = { iv: "Star Wars",
             v: "The Empire Strikes Back",
             vi: "Return of the Jedi",
             i: "The Phantom Menace",
             ii: "Attack of the Clones",
             iii: "Revenge of the Sith",
             vii: "The Force Awakens" }

sw_films.each_key { |k| puts k }

# Then write a program that does the same thing except printing the values.

sw_films.each_value { |v| puts v }

# Finally, write a program that prints both.

sw_films.each { |k,v| puts "Episode #{k}: #{v}" }

# 4.
# Given the following expression, how would you access the name of the person?

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

# 5.
# What method could you use to find out if a Hash contains a specific value
# in it? Write a program to demonstrate this use.

sw_films = { iv: "Star Wars",
             v: "The Empire Strikes Back",
             vi: "Return of the Jedi",
             i: "The Phantom Menace",
             ii: "Attack of the Clones",
             iii: "Revenge of the Sith",
             vii: "The Force Awakens" }

sw_films.has_value?("The Force Awakens")
sw_films.has_value?("Caravan of Courage: An Ewok Adventure")

# 6.
# Given the array...

  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
            'flow', 'neon']

# Write a program that prints out groups of words that are anagrams. Anagrams
# are words that have the same exact letters in them but in a different order.
# Your output should look something like this:

  # ["demo", "dome", "mode"]
  # ["neon", "none"]
  # (etc)

word_checker = {}

words.each do |word|
  word_checker[word] = word.split('').sort.join
end

keys = word_checker.invert.keys

keys.each do |keyword|
  arr = []
  word_checker.each do |k,v|
    if v == keyword
      arr << k
    end
  end
  p arr
end

# 7.
# Given the following code...

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}

# What's the difference between the two hashes that were created?

"The keys are different."
"The key of my_hash is the symbol :x."
"The key of my_hash2 is the string 'hi there'."

# 8.
# If you see this error, what do you suspect is the most likely problem?

  # NoMethodError: undefined method `keys' for Array

  # A. We're missing keys in an array variable.
  # B. There is no method called keys for Array objects.
  # C. keys is an Array object, but it hasn't been defined yet.
  # D. There's an array of strings, and we're trying to get the string keys
  #    out of the array, but it doesn't exist.

"The answer is B."
