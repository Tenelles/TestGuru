class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User',
                      foreign_key: 'user_id'

  has_many :questions, dependent: :destroy
  has_many :test_passings, dependent: :destroy
  has_many :users, through: :test_passings

  validates :title, presence: true
  validates :level, numericality: { only_integer: true }
  validates :title, uniqueness: { scope: :level }

  scope :with_difficulty, -> (difficulty_level) {
    case difficulty_level
    when :easy
      where(level: 0..1)
    when :medium
      where(level: 2..4)
    when :hard
      where(level: 5..Float::INFINITY)
    end
  }

  def self.titles(category_title)
    joins(:category)
      .where(categories: { title: category_title })
      .order(title: :desc)
      .pluck(:title)
  end
end
