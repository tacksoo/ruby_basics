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

