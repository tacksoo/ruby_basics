# objects and classes

# a module groups related classes
module GameDepot

  class Game
    attr_accessor :title
    attr_accessor :price
    attr_accessor :genre
 
    def initialize(title,price,genre)
      @title = title
      @price = price
      @genre = genre 
    end

    def discount()
      if Time.now.strftime("%A") == "Sunday"
        0.8*price
      else
        price 
      end
    end
  end
  
  class GameConsole
    attr_reader :maker
    attr_reader :name
    
    def initialize(maker,name,price)
      @maker = maker
      @name = name
      @price = price
    end
    
    def price
      @price
    end
    
    def price=(new_price)
      @price = new_price
    end
  end  
  
end


tetris = GameDepot::Game.new("Tetris",100,"Puzzle")
puts tetris.discount
puts tetris.title

wii = GameDepot::GameConsole.new("Nintendo","Wii",300)
wii.price = 200
puts "New price for Wii is #{wii.price}"
