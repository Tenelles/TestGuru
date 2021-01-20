class Test < ApplicationRecord
  def self.find_by_category(category_name)
    res = []
    joined_table = joins('tests JOIN categories ON tests.category_id = categories.id').where(
      'categories.title = ?', category_name).find_each { |test| res.push(test.title) }
    res.sort! { |a, b| b <=> a}
  end
end
