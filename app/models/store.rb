class Store < ApplicationRecord
    has_many :store_items
    has_many :items, through: :store_item
end
