class Question < ApplicationRecord
  belongs_to :test

  has_many :answers, dependent: :destroy


  validates :body, presence: true
  validate :validation_answers_count

  def validation_answers_count
    if (answers.count >= 1 && answers.count <= 4)
      errors.add(:answers_count, "can't be that much")
    end
  end

end
