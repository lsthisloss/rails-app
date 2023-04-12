class Item < ApplicationRecord
    has_many :myorderables
    has_many :carts, through: :myorderables
end
