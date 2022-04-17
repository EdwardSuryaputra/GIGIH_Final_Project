class OrderDetail < ApplicationRecord
  belongs_to :menu
  belongs_to :order

  validates :menu_id, presence: true
  validates :order_id, presence: true
  validates :unit_price, presence: true
  validates :quantity, presence: true

end
