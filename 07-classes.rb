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
        return 0.8*price
      else
        return price 
      end
    end
  end

end


tetris = GameDepot::Game.new("Tetris",100,"Puzzle")
puts tetris.discount
puts tetris.title
