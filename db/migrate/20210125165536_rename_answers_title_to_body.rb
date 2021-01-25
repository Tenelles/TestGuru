class RenameAnswersTitleToBody < ActiveRecord::Migration[6.0]
  def change
    rename_column :answers, :title, :body
  end
end
