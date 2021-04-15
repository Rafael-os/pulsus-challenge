class AddUrlToStarships < ActiveRecord::Migration[6.0]
  def change
    add_column :starships, :url, :string
  end
end
