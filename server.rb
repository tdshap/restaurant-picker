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
	erb(:index)
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
