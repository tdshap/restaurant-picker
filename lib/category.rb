require 'active_record'

class Category < ActiveRecord::Base
	has_many :restaurant_category_tags
	has_many :restaurants, through: :restaurant_category_tags
end 