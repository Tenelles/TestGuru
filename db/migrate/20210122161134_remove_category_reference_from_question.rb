class RemoveCategoryReferenceFromQuestion < ActiveRecord::Migration[6.0]
  def change
    remove_reference :questions, :category, foreign_key: true
  end
end
