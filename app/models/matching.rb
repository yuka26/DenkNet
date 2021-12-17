class Matching < ApplicationRecord
  belongs_to :folklore, class_name: "User"
  belongs_to :successor, class_name: "User"
end
