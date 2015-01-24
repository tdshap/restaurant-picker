require "sinatra"
require "sinatra/reloader"
require "httparty"
require "pry"
require_relative "lib/connection.rb"
require_relative "lib/yelp.rb"
require_relative "lib/restaurant.rb"
require_relative "lib/category.rb"
require_relative "lib/restaurant_category_tag.rb"
require_relative "lib/functions.rb"

after do
	ActiveRecord::Base.connection.close
end  

get ("/") do 
	time = Time.now
	formatted_time = time.strftime("%l:%M %p")
	hour = time.strftime("%k").to_f
	spots = which_meal(hour)  

	erb(:index, {locals: {time: formatted_time, spots: spots }} )
end 


post ("/search") do 
  params
binding.pry


params_to_send = { term: 'restaurant',
           limit: 3,
           category_filter: 'American (New)'
         }

locale = { lang: 'fr' }


# response = Yelp.client.search('New York', term: "restaurant", limit: 10)
end 
