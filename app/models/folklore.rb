class Folklore < ApplicationRecord
    has_many :matchings, dependent: :destroy
    has_many :folklore_small_categories, dependent: :destroy
    has_secure_password

    validate :email
    validate :password
    validate :user_name
    validate :furigana
end
