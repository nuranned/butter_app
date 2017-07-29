class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :order

  before_save :finalize
end
