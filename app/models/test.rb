class Test < ApplicationRecord
  def self.find_by_category(category_name)
    Test.joins('"tests" JOIN "categories" ON "tests"."category_id" = "categories"."id"').where(
      '"categories"."title" = ?', category_name
    ).order('"tests"."title"', :DESC).select('"tests"."title"')
  end
end
