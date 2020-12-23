class AddAnswersCorrectDefault < ActiveRecord::Migration[6.0]
  def change
      change_column_null(:tests, :title, from: nil, to: false)
  end
end
