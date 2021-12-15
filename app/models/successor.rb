class Successor < ApplicationRecord
    has_many :matchings, dependent: :destroy
    has_many :successor_small_categories, dependent: :destroy
end
