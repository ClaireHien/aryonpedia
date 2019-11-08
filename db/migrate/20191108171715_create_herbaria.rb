class CreateHerbaria < ActiveRecord::Migration[5.2]
  def change
    create_table :herbaria do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :height
      t.string :description

      t.timestamps
    end
  end
end
