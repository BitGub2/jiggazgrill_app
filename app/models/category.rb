class Category < ApplicationRecord

	validates :title, presence: true
	validates :listing_order, presence: true
	
end
