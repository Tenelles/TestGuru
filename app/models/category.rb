class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  validates :titile, presence: true

  default_scope { order(title: :asc) }
end
