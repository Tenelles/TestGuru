class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :title, null: false
      t.boolean :correct, default: false, null: false
      t.references :question, null: false

      t.timestamps
    end
  end
end
