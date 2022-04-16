class Category < ApplicationRecord
  has_many :categories_menus
  has_many :menus, through: :categories_menus

  validates :category_name, uniqueness: true
end
