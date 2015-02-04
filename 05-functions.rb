# functions

# you can specify default values in parameters
def add(a,b=1)
  a+b
end

puts add(1)  # prints 2
puts add(1,2) # prints 3

# the splat operator packs the arguments into an array
def add(*nums)
  sum = 0
  num.each do |n|
    sum += n
  end
  sum
end

# yield keyword is used to call a block
def my_yielder
  puts "before yielding"
  yield
  puts "end yielding"
end

my_yielder { puts "yielding!" }

# you can yield with arguments 
def my_yielder2
  puts "before yielding"  
  yield 1
  yield 2
  yield 3
  puts "end yielding"
end

my_yielder2 { |n| puts "yielding! #{n}" }

