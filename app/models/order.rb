class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items

  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0}.sum
  end

end
