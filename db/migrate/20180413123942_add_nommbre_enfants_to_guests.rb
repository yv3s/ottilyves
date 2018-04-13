class AddNommbreEnfantsToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :nombre_enfants, :integer
  end
end
