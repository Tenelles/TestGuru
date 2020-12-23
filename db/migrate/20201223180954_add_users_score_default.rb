class AddUsersScoreDefault < ActiveRecord::Migration[6.0]
  def change
      change_column_default(:users, :score, from: nil, to: 1)
  end
end
