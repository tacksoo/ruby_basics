require_relative '11-subclass.rb'

module GameDepot
 
  class Accessory
    attr_accessor :name
    attr_accessor :price
    
    def initialize(name,price) 
       @name = name
       @price = price
    end 
  
    public 
    def special_price
      puts "New special price! Original price was #{@price}"
      @price - special_discount 
    end
    
    private 
    def special_discount
      x = rand(1..5)  
    end
  end
  
end
