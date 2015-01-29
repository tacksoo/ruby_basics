
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

room_temp = 67
# case statement with numbers
case room_temp
when 69
  puts "Room is a little warm but okay"
when 68
  puts "Room feels just right"
when 67
  puts "Room is a little chilly but okay"
else
  puts "Room is too hot or too cold"
end

season  = "spring"
# case statement with string
case season
when "spring"
  puts "Yay Basketball!"
when "fall"
  puts "Yay Football"
else
  puts "Yay Baseball"
end
