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
  :database => "imdb"
}
)


class Movie < ActiveRecord::Base
end

class Actor < ActiveRecord::Base
end

class Role < ActiveRecord::Base
end

class Movies_director < ActiveRecord::Base
end

# print the column name of tables
p Movie.column_names
puts Movie.where(name: 'Scarface').to_a[1].attributes

p Actor.column_names
p Role.column_names
p Movies_director.column_names

# where() method returns a ActiveRecord_Relation
result = Movie.where(name: 'Matrix, The')
# first() method returns a Movie object
matrix = result.first
puts matrix.attributes

# find_by() method returns the first match
keanu = Actor.find_by(first_name: 'Keanu')
puts keanu.attributes
puts keanu_id = keanu.id

# find all roles by keanu
keanu_roles = Role.where(actor_id: keanu_id).to_a

# print the movie info for every keanu movie
keanu_roles.each do | role |
  puts Movie.find_by(id: role.movie_id).attributes
end
