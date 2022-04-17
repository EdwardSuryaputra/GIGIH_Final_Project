class Order < ApplicationRecord
  belongs_to :customer

  validates :status, inclusion: %w(NEW PAID CANCELLED)
  validates :customer_id, presence: true
end
