# loops and iterators

# for-loop
for x in 1..10
  puts x
end

# while-loop
x = 1
while x <= 10
  puts x
  x += 1
end

# until loop
x = 1
until x == 11
  puts x
  x += 1
end

# an iterator is a method that accepts a block
# times iterator
3.times do |x| 
  puts "Hurray for Ruby!"
end

# upto iterator
3.upto(5) do |x|
  puts "Hurray again for Ruby! #{x}"
end

# step iterator
1.upto(10) do |x|
  puts "#{x} is a odd number"
end

# each iterator
consoles = [ "wii u", "ps4", "xboxone"]

consoles.each do |x|
  puts "Should I get a #{x}?"
end

# select iterator
# the opposite of the select iterator is called reject
words = [ "ramen", "pizza", "coffee", "coke", "fruit" ]
short_words = words.select { |word| word.length >= 5 }
puts short_words.inspect

# collect iterator
words = [ "today", "i", "learned" ]
# create an array with reversed words
reversed_words = words.collect { |word| word.reverse }
puts reversed_words.to_s

# each_slice iterator
# the slice will be an array
(1..10).each_slice(3) do |slice|
  puts slice.to_s
end
