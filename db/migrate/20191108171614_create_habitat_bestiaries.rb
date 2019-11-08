class CreateHabitatBestiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :habitat_bestiaries do |t|
      t.string :name

      t.timestamps
    end
  end
end
