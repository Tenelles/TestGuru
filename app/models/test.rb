class Test < ApplicationRecord
  belongs_to :category
  has_many :questions
  has_many :test_passings
  has_many :users, through: :test_passings

  def self.tests_titles_with_category(title)
    joins('JOIN categories ON tests.category_id = categories.id')
      .where(categories: {title: title})
      .pluck(:title)
  end
end
