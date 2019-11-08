class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :code
      t.string :description
      t.string :character
      t.string :img_profile
      t.string :password_digest

      t.timestamps
    end
  end
end
