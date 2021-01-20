class User < ApplicationRecord
  def get_passed_tests_with_level(level)
    Test.joins("JOIN test_passings ON test_passings.user_id = #{id}
      AND test_passings.test_id = tests.id").where(level: level)
  end
end
