# subclass
require_relative '07-classes.rb'

module GameDepot

  class UsedGame < Game
    attr_accessor :condition
    
    def initialize(title,price,genre,condition)
      super(title,price,genre) 
      @condition = condition
      adjust_price_condition
    end
    
    def adjust_price_condition
      return if @price <= 10
      if @condition == "Very Good" 
        @price -= 5
      elsif @condition == "Good"
        @price -= 10
      elsif @condition == "Acceptable"
        @price -= 15
      end
    end
   
    def self.warranty(condition)
        return "One Month" if condition == "Like New" 
        return "Two Month" if condition == "Very Good" 
        return "Three Month" if condition == "Good" 
        return "Four Month" if condition == "Acceptable" 
    end
  end
  
end
