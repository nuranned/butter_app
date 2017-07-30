class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :order

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
      errors
    end
  end

  def order_present
    if order.nil?
      errors
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end

end
