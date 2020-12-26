class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, default: 1
      t.references :creator, index: { name: "index_tests_on_user_id" }, null: false
      t.references :category, null: false
      t.timestamps
    end
  end
end
