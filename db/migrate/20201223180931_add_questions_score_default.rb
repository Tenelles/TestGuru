class AddQuestionsScoreDefault < ActiveRecord::Migration[6.0]
  def change
      change_column_default(:questions, :score, from: nil, to: 1)
  end
end
