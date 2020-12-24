class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level, default: 1
      t.integer :creator_id, null: false
      t.timestamps
    end
    add_reference(:tests, :category)
    add_reference(:tests, :user, index: {name: "creator_id"})
  end
end
