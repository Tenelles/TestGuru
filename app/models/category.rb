class Category < ApplicationRecord
  has_many :tests, dependent: :destroy
  has_many :questions, dependent: :destroy
end
