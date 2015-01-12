class Restaurant < ActiveRecord::Base
	has_many :restaurant_category_tags
	has_many :categories, through: :restaurant_category_tags
end 