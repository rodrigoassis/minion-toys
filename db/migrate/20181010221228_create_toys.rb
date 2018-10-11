class CreateToys < ActiveRecord::Migration[5.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :url_name
      t.decimal :price

      t.timestamps
    end
    add_index :toys, :url_name
  end
end
