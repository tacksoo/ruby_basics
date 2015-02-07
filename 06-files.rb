# file handling

filename = "01-variables.rb"

if !filename.nil?
  File.open(filename) do |file|
    file.each_line do |line|
      # line is a string, process it here   
    end
  end
end

# downloading a file from url
require 'open-uri'

news = open("https://news.ycombinator.com/rss")

# use crack gem to turn xml to dictionary
require 'rubygems'
require 'crack'
require 'pp'

items = Crack::XML::parse(news)
pp items