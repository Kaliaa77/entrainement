class AddDetailsToLists < ActiveRecord::Migration[8.1]
  def change
    add_column :lists, :name, :string
  end
end
