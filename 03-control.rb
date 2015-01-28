
# if-statement
if true
  puts "it's true"
end

# if-else statement
happy = false

if happy   # only the boolean false and nil are false, everything else is true
  puts "Smile :)"  
else
  puts "Still Smile :)"
end

# if-else-if statment
age = 42

if age < 21
  puts "Still a child"
elsif age <= 35 
  puts "Young Adult"
elsif 
  puts "Adult"
end   

# you can use this other form 
puts "it's true again!" if true

rainy = false

# if not rainy
unless rainy  
  puts "it is not raining outside!"
end
