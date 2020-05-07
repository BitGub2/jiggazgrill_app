class Category < ApplicationRecord

	has_many :products

	validates :title, presence: true
	validates :listing_order, presence: true

end
