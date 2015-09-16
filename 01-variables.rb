# this is a ruby comment
=begin
  this is a multi-line comment
  yay, more space for comment
  and more comment
=end

# fixnum 
n = 42

# float
f = 4.2

# everything is an object in Ruby
puts 42.equal? 40

# check if nil
puts 42.nil?

# check if object is of a specific type
puts 42.instance_of? Fixnum

# check if object is a type of a superclass
puts 42.is_a? Integer
puts 42.kind_of? Integer

# to find out the type of a variable, use the class() method
42.class

# find all methods of a variable
42.methods

# boolean 
b = true # or false

# string
s = "ruby is cool"

# access characters in a string with bracket notation
puts s[0]

# negative indices indicate chars from the back
puts s[-1]

# string slicing
puts s[0..3]

# string interpolation
puts "#{s}, ain't it?"

# string formatting 
puts "Gwinnett has 6%% tax rate: e.g. $2.50 bill comes to $%.2f %s" % [ 2.5*0.06+2.5, "total" ]

# string has lots of methods like reverse
puts s.reverse

# methods ending with ! changes the variable 
# source code is in C: http://www.opensource.apple.com/source/ruby/ruby-83.4/ruby/string.c
# documentation for all string methods: http://www.ruby-doc.org/core-2.2.0/String.html
puts s.reverse!

# range
(1..42).class

# random number from range
rand(1..42)  # random num from 1 to 42

# arrays
a = [ 3, 2, 1 ]

# cool array subtraction trick
b = [ 3, 2 ]
puts a - b

# sort array
a.sort!

# array with strings
a = [ "ichi", "ni", "san" ]

# convenient way to create an array of string
a = %w{ ichi ni san shi go } 

# the split method in string returns an array
a = s.split

# hashes
h = { :one => "uno", :two => "dos", :three => "tres" }

# the following is the same of above 
h = { one: "uno", two: "dos", three: "tres" }

# A constant from Object (root of all Ruby objects)
# http://ruby-doc.org/core-2.2.0/Object.html
# ARGV should be an empty array if you did not pass in any command line args
puts ARGV

# any variable starting with a dollar sign is a global variable 
puts "Enter a nice word: "
word = $stdin.gets
puts word

# eql?
# notice that the following two variables are two different objs with different object_id
x = "tuesday"
y = "tuesday"
puts x.object_id
puts y.object_id

# x and y both return the same hash values
puts x.hash
puts y.hash

# eql? method returns true on same hash value
puts x.eql? y   # true

# equal? method returns true on same object_id value
puts x.equal? y   # false

# symbols are lightweight strings and they are immutable
s = :key
puts s.class

# only one copy of a symbol exists at a time
t = :key
puts s.object_id == t.object_id

# convert string to symbol and vice versa
puts s.to_s
word = "wednesday"
puts word.to_sym

# btw "p var" is equivalent to "puts var.inspect"

print "adds no new line"

puts "adds a new line"
