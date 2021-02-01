class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :validation_count, on: :create

  scope :correct, -> { where(correct: true) }

  def validation_count
      if question.answers.count > 4
        errors.add(:answers_count, "can't be that much")
      end
  end
end
