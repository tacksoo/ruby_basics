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

# character set
word = "saturday"
puts word.gsub(/[aeiou]/,"x")

