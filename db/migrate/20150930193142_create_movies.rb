class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.text :genre
      t.text :rated
      t.integer :stars
      t.text :description

      t.timestamps null: false
    end
  end
end
