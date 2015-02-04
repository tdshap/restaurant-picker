require 'active_record'

# class Category < ActiveRecord::Base
# 	has_many :restaurant_category_tags
# 	has_many :restaurants, through: :restaurant_category_tags
# end 



class Meal_Category < ActiveRecord::Base
	has_many :restaurant_category_tags
	has_many :restaurants, through: :restaurant_category_tags
	has_many :cuisine_categories, through: :restaurants
	has_many :situation_categories, through: :restaurants
end 


class Cuisine_Category < ActiveRecord::Base
	has_many :restaurant_category_tags
	has_many :restaurants, through: :restaurant_category_tags
	has_many :meal_categories, through: :restaurants
	has_many :situation_categories, through: :restaurants
end 

class Situation_Category < ActiveRecord::Base
	has_many :restaurant_category_tags
	has_many :restaurants, through: :restaurant_category_tags
	has_many :meal_categories, through: :restaurants
	has_many :cuisine_categories, through: :restaurants
end 

class Image < ActiveRecord::Base
	belongs_to :restaurants

end 