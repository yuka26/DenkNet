class UserCategory < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :category, class_name: "Category"
end
