class Cart < ApplicationRecord
    has_many :myorderables
    has_many :items

    def total
        myorderables.to_a.sum { |myorderable| myorderable.total }
    end
end
