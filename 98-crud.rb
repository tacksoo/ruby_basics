require 'active_record'
require 'pp'

ActiveRecord::Base.establish_connection (
{
  :adapter => "mysql2",
  :host => "127.0.0.1",
  :username => "tacksoo", # change username
  :password => "",
  :database => "imdb"
}
)

class Actor < ActiveRecord::Base
end

# create, read, update, delete in activerecord

# create a new actor
#actor = Actor.new(id: 1234567, first_name: "Dude", last_name: "Some")
#actor.save
#in one line, Actor.create(id: 12345678, first_name: "Another Dude", last_name: "Cool")

# read new actor
#actor = Actor.find_by id: 1234567
#puts actor.attributes;

# update new actor
#actor = Actor.find_by id: 1234567
#actor.first_name = "Some Dude"
#actor.last_name = "Cool"
#actor.gender = "M"
#actor.save

# delete new actor
#actor = Actor.find_by id: 1234567
#actor.destroy
