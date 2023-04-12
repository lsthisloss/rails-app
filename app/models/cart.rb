class Cart < ApplicationRecord
    has_many :myorderables
    has_many :items, through: :myorderables

    def total
        myorderables.to_a.sum { |myorderable| myorderable.total }
    end
end
