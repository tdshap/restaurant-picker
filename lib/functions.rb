def which_meal(hour) 
 	if 0 < hour && hour < 4
		spots = "munchies"
		
	elsif 4 < hour && hour < 11
		retrn spots = "breakfast"
		# Restaurants.find_where(category: "breakfast")
	
	elsif 11 < hour && hour < 15
		return spots = "lunch"
		# Restaurants.find_where(category: "lunch")

	elsif 15 < hour && hour < 15
		return spots = "snacks"

	elsif 17 < hour && hour < 21
		return spots = "dinner"
		# Restaurants.find_where(category: "dinner")
	elsif 21 < hour && 23
		return spots = "dessert"
	end 
end 