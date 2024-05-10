class AddColumnToComment < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :body, :text
    add_reference :comments, :parent, null: true, foreign_key: { to_table: :comments, column: :parent_id }
    remove_column :comments, :content
  end
end
