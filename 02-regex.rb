# regular expressions

# anything between two slashes is a regexp objecgt
# "=~" is ruby's regexp matching operator 
# it returns the index of where a match is found
# nil is returned if there is no match
puts /is/ =~ "ruby is oo"  # returns 5

# matches literal string
puts /c9/ =~ "my ide is c9"

# matches any string that starts with "a" and ends with "c"
puts /a.c/ =~ "abd aaa bbb abb abc"   # matches "abc"

# for the literal . use \.
puts /a\.c/ =~ "a.c aaa bbb abb abc"  # matches "a.c"

# modifier, i, allows for ignoring case
puts /dos/i =~ "uno DOS tres" # match "DOS"

# the !~ does the opposite of =~
puts /saturday/ !~ "caturday"

# strings come with sub() and gsub() 
msg = "na na na na na na na na batman"
# sub() just changes the first occurence 
puts msg.sub(/na/,"la")
# gsub() changes all occurences
puts msg.gsub(/na/,"la")
# sub!() makes changes to the string itself
puts msg.sub!(/na/,"la")
# gsub!() 
puts msg.gsub!(/na/,"la")
puts msg

# character sets match charaters in brackets
word = "saturday"
puts word.gsub(/[aeiou]/,"x")

# the ^ symbol changes it to everythin but these chars
puts word.gsub(/[^aeiou]/,"x")

# short cut for commom sets
# \d any digit 
# \D any non-digit
# \w any word character (letter, number, underscore)
# \W any non-word character
# \s any whitespace character (space, tab, newline)
# \S any non-whitespace character

# the split() method on string accepts regexs
# be careful not to forget the backslash character
puts "sundays  are  so    relaxing".split(/\s+/).to_s

# + means at least one character
# ? means one or zero character
# * means zero or more characters

# the scan() method in strings returns the matches in an array
sentence = "I used to live in 30303 but now I live in 30043"
zipcodes = sentence.scan(/\d{5}/)
puts zipcodes.to_s

# the scan() method also accepts a block
zipcodes = sentence.scan(/\d{5}/) { |match| puts "A zipcode: #{match}" }

# use parentheses to capture groups 
# scan() method returns an array of arrays
phone_nums =  "678.407.5000 678.407.5001"
p phone_nums.scan(/(\d{3})\.(\d{3})\.(\d{4})/)

