class Test < ApplicationRecord
  def self.get_tests_titles_with_category(title)
    joins('JOIN categories ON tests.category_id = categories.id').where(
      categories: {title: title}).pluck(:title)
  end
end
