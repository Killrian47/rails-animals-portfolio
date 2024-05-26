# Create table cats in the database with the following columns:
class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.text :description
      t.references :cat_breed, null: false, foreign_key: true
      t.integer :age

      t.timestamps
    end
  end
end
