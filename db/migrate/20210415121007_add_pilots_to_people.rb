class AddPilotsToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :pilots, :text, array: true
  end
end
