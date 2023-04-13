class Item < ApplicationRecord
    has_many :myorderables
    has_many :carts

    before_destroy(:make_sure_no_myorderables)

    def make_sure_no_myorderables
        if self.myorderables.empty?
            return true
        else
            return false
        end
    end
end
