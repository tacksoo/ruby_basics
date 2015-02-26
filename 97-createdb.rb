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
  :password => ""
}
)

# create an empty database called ruby_basics
ActiveRecord::Base.connection.create_database("gamedepot")
puts "Database 'gamedepot' created"

# drop the database
#ActiveRecord::Base.connection.drop_database("gamedepot")