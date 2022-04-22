class OrderDetail < ApplicationRecord
  belongs_to :menu
  belongs_to :order

  before_save :set_unit_price

  validates :menu_id, presence: true
  validates :unit_price, presence: true
  validates :quantity, presence: true
  

  private 
  def set_unit_price
    self[:unit_price]
  end

end
