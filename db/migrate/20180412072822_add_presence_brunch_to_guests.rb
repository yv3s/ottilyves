class AddPresenceBrunchToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :presence_brunch, :boolean
  end
end
