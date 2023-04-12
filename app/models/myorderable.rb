class Myorderable < ApplicationRecord
  belongs_to :item
  belongs_to :cart

  def total
    item.price.to_i * quantity.to_i
  end
end
