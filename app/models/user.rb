class User < ApplicationRecord
  has_many :test_passings, dependent: :destroy
  has_many :tests, through: :test_passings
  has_many :works, class_name: "Test",
                   foreign_key: "user_id",
                   dependent: :destroy

  def passed_tests(level)
    tests.where(level: level)
  end
end
