class AddCheckAndPets < ActiveRecord::Migration[5.2]
  def change

    add_reference :bestiaries, :pet, foreign_key: true

  end
end
