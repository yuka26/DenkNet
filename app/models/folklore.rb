class Folklore < ApplicationRecord
    has_many :matchings, dependent: :destroy
    has_many :folklore_small_categories, dependent: :destroy
end
