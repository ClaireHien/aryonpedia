class CreateRarityHerbaria < ActiveRecord::Migration[5.2]
  def change
    create_table :rarity_herbaria do |t|
      t.string :name

      t.timestamps
    end
  end
end
