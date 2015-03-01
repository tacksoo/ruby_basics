require 'active_record'

# pre-req
# gem install mysql2 

ActiveRecord::Base.establish_connection (
{
    :adapter => "mysql2",
    :host => "127.0.0.1",
    :username => "tacksoo",
    :password => "",
    :database => "imdb"
}
)

# a movie has many directors and roles (one-to-many)
class Movie < ActiveRecord::Base
  has_many :movies_directors 
  has_many :roles
  has_many :directors, through: :movies_directors
  has_many :actors, through: :roles
end

class Director < ActiveRecord::Base
  has_many :movies_directors
  has_many :movies, through: :movies_directors 
end

# CamelCase classes gets mapped to snake_case tables
# the movies_directors table is a junction table
class MoviesDirector < ActiveRecord::Base
  belongs_to :movie
  belongs_to :director 
end

class Actor < ActiveRecord::Base
  has_many :roles   
  has_many :movies, through: :roles
end

class Role < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :movie
end

# Find all directors of the movie 'Four Rooms'
matrix = Movie.find_by(name: 'Four Rooms')
matrix.directors.each do |d|
  puts d.first_name + " " + d.last_name
end

# Find all movies starring Sigourney Weaver
sig = Actor.find_by(first_name: 'Sigourney', last_name: 'Weaver')
sig.movies.each do |m|
  puts m.name + " " + m.year.to_s
end

# Find cast list for 'Pulp Fiction'
