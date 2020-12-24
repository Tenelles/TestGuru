class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.integer :score, default: 1

      t.timestamps
    end
  end
end
