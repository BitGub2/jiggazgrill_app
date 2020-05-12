class Product < ApplicationRecord
  belongs_to :category

  
  validates :name, presence: true
  validates :price, numericality: true, presence: true 
end
