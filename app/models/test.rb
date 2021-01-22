class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User",
                      foreign_key: "user_id"

  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :users, through: :test_passings

  def self.titles(category_title)
    joins(:category)
      .where(categories: { title: category_title })
      .order(title: :desc)
      .pluck(:title)
  end
end
