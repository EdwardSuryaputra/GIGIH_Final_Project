class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details

  validates :status, inclusion: %w(NEW PAID CANCELLED)
  validates :customer_id, presence: true
end
