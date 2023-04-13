class Order < ApplicationRecord
    has_many :myorderables, dependent: :destroy
end
