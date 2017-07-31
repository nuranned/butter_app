class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :order

  validates :quantity, presence: true
  validate :item_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      item.price
    end
  end

  def total_price
    unit_price * quantity
  end

private
  def item_present
    if item.nil?
      errors.add(:item, "not valid or not active")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "not a valid order")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end

end
