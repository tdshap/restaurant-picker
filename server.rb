require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative "./lib/connection.rb"
require_relative "./lib/yelp.rb"
require_relative "./lib/restaurant.rb"
require_relative "./lib/category.rb"
require_relative "./lib/restaurant_category_tag.rb"

after do
	ActiveRecord::Base.connection.close
end  

get ("/") do 
	erb(:index)
end 


post ("/search") do 
  params

# response = Yelp.client.search('New York', term: "restaurant", limit: 10)
end 
