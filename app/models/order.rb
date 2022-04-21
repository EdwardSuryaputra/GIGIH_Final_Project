class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details, dependent: :destroy
  accepts_nested_attributes_for :order_details, allow_destroy: :true

  before_save :set_total

  validates :status, inclusion: %w(NEW PAID CANCELLED)
  validates :customer_id, presence: true
  validates :date, presence: true
  validates_associated :order_details

  def total 
    order_details.collect { |order_detail| order_detail.valid? ? order_detail.unit_price * order_detail.quantity : 0 }.sum
  end

  private
  def set_total
    self[:total] = total
  end
end
