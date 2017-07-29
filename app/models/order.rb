class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items

  before_create :set_order_status
  before_save :update_subtotal

end
