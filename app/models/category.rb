class Category < ApplicationRecord
  default_scope { order(title: :asc) }

  has_many :tests, dependent: :destroy

  validates :titile, presence: true
end
