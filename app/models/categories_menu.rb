class CategoriesMenu < ApplicationRecord
  belongs_to :category, class_name: "Category"
  belongs_to :menu, class_name: "Menu"
end