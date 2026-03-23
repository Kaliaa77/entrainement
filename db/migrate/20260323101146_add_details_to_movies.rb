class AddDetailsToMovies < ActiveRecord::Migration[8.1]
  def change
    add_column :movies, :title, :string
    add_column :movies, :overview, :text
    add_column :movies, :poster_url, :string
    add_column :movies, :rating, :decimal
    add_reference :movies, :list, null: false, foreign_key: true
  end
end
