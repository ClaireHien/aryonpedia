class CreateRarityBestiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :rarity_bestiaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
