class AddColor < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :color, :string
    add_column :habitat_herbaria, :color, :string
    add_column :habitat_bestiaries, :color, :string
    add_column :levels, :color, :string
    add_column :rarity_herbaria, :color, :string
    add_column :rarity_bestiaries, :color, :string
    add_column :seasons, :color, :string
  end
end
