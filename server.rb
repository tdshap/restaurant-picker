require "sinatra"
require "sinatra/reloader"
require "httparty"
require "pry"
require_relative "lib/connection.rb"
require_relative "lib/yelp.rb"
require_relative "lib/restaurant.rb"
require_relative "lib/category.rb"
require_relative "lib/restaurant_category_tag.rb"

after do
	ActiveRecord::Base.connection.close
end  

get ("/") do 
	time = Time.now

	hour = time.strftime("%H").to_i
	if 5 < hour < 11
		spots = Restaurants.find_where(category: "breakfast")
	elsif 11 < hour < 17
		spots = Restaurants.find_where(category: "lunch")
	elsif 17 < hour < 24 || 0 <= hour < 5 
		spots = Restaurants.find_where(category: "dinner")
	end   

	erb(:index {locals: {time: time,  }} )
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
