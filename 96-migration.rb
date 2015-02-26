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

# create a folder called 'migrate' and place the following files in there

=begin 
# file name '001_create_consoles.rb

class CreateConsoles < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.string :name, :null => false
      t.string :manufacturer
      t.float :price, :null => false
      t.integer :year
    end
  end
end

=end

=begin
# file name '002_create_games.rb'

class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, :null => false
      t.text :description
      t.float :price, :null => false
      t.integer :count, :null => false
      t.boolean :used, :default => false
    end
    add_reference :games, :console
  end
end

=end

ActiveRecord::Migrator.migrate('migrate')