class CreateBestiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :bestiaries do |t|
      t.string :name
      t.string :location
      t.string :height
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
