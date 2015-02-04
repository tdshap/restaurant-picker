# require 'rubygems'
# require 'bundler/setup'
# Bundler.require(:default)


require "sinatra"
require "sinatra/reloader"
require "httparty"
require "pry"
require "yelp"
require "active_record"
require "nokogiri"
# require_relative "lib/connection.rb"
# require_relative "lib/yelp.rb"
# require_relative "lib/restaurant.rb"
# require_relative "lib/category.rb"
# require_relative "lib/restaurant_category_tag.rb"
require_relative "lib/functions.rb"

# after do
# 	ActiveRecord::Base.connection.close
# end  


get ("/") do 
	time_not_formatted = Time.now
	time = time_not_formatted.strftime("%l:%M %p")
	
	hour = time_not_formatted.strftime("%k").to_f
	meal = which_meal(hour)  

# CAN only do this when database is hookedup
	# spots = initial_suggestions( meal )

 # spots: spots }} 
	erb(:index,{locals: {time: time, meal: meal}} )
end 


post ("/search") do 
  params

# response = Yelp.client.search('New York', term: "restaurant", limit: 10)
end 
