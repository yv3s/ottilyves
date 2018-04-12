class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :prenom
      t.string :nom
      t.string :email
      t.integer :nombre
      t.text :remarques

      t.timestamps
    end
  end
end
