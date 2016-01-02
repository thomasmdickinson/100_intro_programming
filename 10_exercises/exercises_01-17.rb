# 1.

# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |value| puts value }

# 2.
# Same as above, but only print out values greater than 5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |value| puts value if value>5}

# 3.
# Now, using the same array from #2, use the select method to extract
# all odd numbers into a new array.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd_arr = arr.select { |value| value % 2 == 1}

# 4.
# Append "11" to the end of the original array. Prepend "0" to the beginning.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.unshift(0) << 11

# 5.
# Get rid of "11". And append a "3".

arr.pop
arr << 3

# 6.
# Get rid of duplicates without specifically removing any one value.

arr.uniq!

# 7.
# What's the major difference between an Array and a Hash?

"A Hash consists of key/value pairs. An Array consists only of values. The keys
in an array are integers starting from 0."

# 8.
# Create a Hash using both Ruby syntax styles.

hash_a = {:my_key => 'my value'}
hash_b = {my_other_key: 'my other value'}

# 9.
# Suppose you have a hash h = {a:1, b:2, c:3, d:4}

h = {a:1, b:2, c:3, d:4}

  # 1. Get the value of key `:b`.
  h[:b]

  # 2. Add to this hash the key:value pair `{e:5}`
  h[:e] = 5

  # 3. Remove all key:value pairs whose value is less than 3.5
  h.delete_if { |k,v| v < 3.5 }

# 10.
# Can hash values be arrays? Can you have an array of hashes? (give examples)

star_wars_quality = {good: [4, 5, 7], bad: [1, 2], okay: [3, 6] }

star_wars = [{number: 4, title: 'A New Hope'},
             {number: 5, title: 'The Empire Strikes Back'},
             {number: 6, title: 'Return of the Jedi'}]

# 11.
# Look at several Rails/Ruby online API sources and say which one you like best
# and why.

"Of the ones I've seen so far, my favorite is ruby-doc.org, because it is
thorough, easy to navigate, and does not contain extraneous information like
Rails methods which are of no current use to me."

# 12.
# Given the following data structures. Write a program
# that moves the information from the array into the
# empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:street] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:street] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# 13.
# Using the hash you created from the previous exercise,
# demonstrate how you would access Joe's email and Sally's phone number?

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# 14.
# In exercise 12, we manually set the contacts hash values one by one.
# Now, programmatically loop or iterate over the contacts hash from exercise 12,
# and populate the associated data from the contact_data array.
# Hint: you will probably need to iterate over ([:email, :address, :phone]),
# and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry
# in the contacts hash, like this:

  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
  contacts = {"Joe Smith" => {}}

  hash_fields = [:email, :address, :phone]

  contacts.each do |name, hash|
    hash_fields.each do |field|
      hash[field] = contact_data.shift
    end
  end


# As a bonus, see if you can figure out how to make it work
# with multiple entries in the contacts hash.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }

hash_fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), index|
    hash_fields.each do |field|
    hash[field] = contact_data[index].shift
  end
end

# 15.
# Use Ruby's Array method delete_if and String method start_with?
# to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if{ |word| word.start_with?('s') }

# Then recreate the arr and get rid of all of the words
# that start with "s" or starts with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if{ |word| word.start_with?('s', 'w') }

# 16.
# Take the following array:

  a = ['white snow', 'winter wonderland', 'melting ice',
       'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...].
# Look into using Array's map and flatten methods,
# as well as String's split method.

a = a.map{|phrase| phrase.split(" ")}
a = a.flatten

# 17.
# What will the following program output?

  # hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
  # hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

  # if hash1 == hash2
  #  puts "These hashes are the same!"
  # else
  #  puts "These hashes are not the same!"
  # end

"These hashes are the same!"
