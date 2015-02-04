require "httparty"
require "nokogiri"
require "open-uri"
require "pry"


page = Nokogiri::HTML(open("https://www.theinfatuation.com/new-york/reviews"))

table_array = page.css("tr td")


x = 0 
while x < table_array.length 
	restaurant_name = table_array[x].children.text
	review = table_array[x].children[0].attributes["href"].value
	x += 1
	neighborhood = table_array[x].children[0].text
	x += 1
	rating = table_array[x].children[0].text
	x += 1
	price = table_array[x].children[0].text
	x += 2
	
	restaurant_page = Nokogiri::HTML(open(review))
	situation_categories = []
	categories_array = restaurant_page.css(".perfect-for").css("li")
	
	categories_array.each do | category_element |
		category = category_element.children[0].children[0].text
		situation_categories.push(category)
	end 

	address_info = restaurant_page.css(".map-and-more").css(".address")

	website = restaurant_page.css(".map-and-more").css(".website").css("a")

	phone_number = restaurant_page.css(".map-and-more").css(".phone")	

	opentable = restaurant_page.css(".map-and-more").css(".opentable").css(".a")

	cuisine_selector = restaurant_page.css(".map-and-more").css("ul")

	if cuisine_selector[2]
		cuisine_array = cuisine_selector[2].children
	else 
		cuisine_array = cuisine_selector[1].children
	end


	cusine_categories = []

	cuisine_array.each do | cuisine |
		tag = cuisine.children[0].children[0].text
		puts tag

		# cuisine_array.push(tag)
	end 

	puts situation_categories
	puts cuisine_array

	puts restaurant_name
	puts review 
	puts neighborhood
	puts rating 
	puts price
	puts website
	puts phone_number



	# restaurant = Restaurant.new({ 
	# 	name: restaurant_name,
	# 	review: rewiew,
	# 	neighbothood: neighborhood,
	# 	rating: rating,
	# 	price: price, 
	# 	website: website,
	# 	phone_number: phone_number
	# })


	# situation_categories.each do | situation |
	# 	category = SituationCategory.find_by(name: situation)
		
	# 	SituationRestaurantCategory.new({
	# 		restaurant_id: restaurant.id,
	# 		situation_category_id: category.id
	# 	})
	# end 

	# cuisine_array.each do | cuisine |
	# 	category = CuisineCategory.find_by(name: cuisine)

	# 	CuisineRestaurantCategory.new({
	# 		restaurant_id: restaurant.id,
	# 		cuisine_category_id: category.id
	# 	})
	# end 


end 

