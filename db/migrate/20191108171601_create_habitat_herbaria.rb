class CreateHabitatHerbaria < ActiveRecord::Migration[5.2]
  def change
    create_table :habitat_herbaria do |t|
      t.string :name

      t.timestamps
    end
  end
end
