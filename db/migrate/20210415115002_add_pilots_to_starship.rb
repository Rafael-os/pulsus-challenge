class AddPilotsToStarship < ActiveRecord::Migration[6.0]
  def change
    add_column :starships, :pilots, :text, array: true
  end
end
