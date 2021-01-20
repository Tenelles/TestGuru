class User < ApplicationRecord
  def tests_by_level(level)
    Test.joins("tests JOIN test_passings ON test_passings.user_id = #{id}
      AND test_passings.test_id = tests.id").where(level: level)
  end
end
