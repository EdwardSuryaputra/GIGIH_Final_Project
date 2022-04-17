class Menu < ApplicationRecord
  has_many :categories_menus
  has_many :categories, through: :categories_menus
  has_many :order_details
  
  validates :item_name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0.01}
  validates :description, length: {maximum: 150}
  # validates :categories, presence: true
end
