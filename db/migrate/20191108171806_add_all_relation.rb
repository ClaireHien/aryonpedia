class AddAllRelation < ActiveRecord::Migration[5.2]
  def change

    add_reference :bestiaries, :level, foreign_key: true
    add_reference :bestiaries, :habitat_bestiary, foreign_key: true
    add_reference :bestiaries, :rarity_bestiary, foreign_key: true
    add_reference :bestiaries, :user, foreign_key: true

    add_reference :herbaria, :habitat_herbarium, foreign_key: true
    add_reference :herbaria, :rarity_herbarium, foreign_key: true
    add_reference :herbaria, :category, foreign_key: true
    add_reference :herbaria, :season, foreign_key: true
    add_reference :herbaria, :user, foreign_key: true

  end
end
