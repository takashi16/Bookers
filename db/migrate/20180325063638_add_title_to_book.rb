class AddTitleToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :title, :string
  end
end
