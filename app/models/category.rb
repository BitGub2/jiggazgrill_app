class Category < ApplicationRecord

	has_many :products
	accepts_nested_attributes_for :products, allow_destroy: true, reject_if: :all_blank

	validates :title, presence: true
	validates :listing_order, presence: true

end
