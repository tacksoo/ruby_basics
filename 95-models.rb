require 'active_record'
require 'pp'

# pre-reqs
# gem install mysql2 
# gem install activerecord

ActiveRecord::Base.establish_connection (
{
  :adapter => "mysql2",
  :host => "127.0.0.1",
  :username => "tacksoo", # change username
  :password => "",
  :database => "gamedepot"
}
)

# one-to-many connection between console and games
# a console has many games for it
class Console < ActiveRecord::Base
  has_many :games  
  validates_presence_of :name
  validates_numericality_of :price
  validates_inclusion_of :year, in: 1900..2100
end

# one-to-one connection between game and console
# a game belongs to a console
class Game < ActiveRecord::Base
  belongs_to :console 
  validates_presence_of :name
  validates_numericality_of :price
  validates_numericality_of :count
end
