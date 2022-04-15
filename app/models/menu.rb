class Menu < ApplicationRecord
  validates :price, presence: true, numericality: { greater_than: 0.01}
end
