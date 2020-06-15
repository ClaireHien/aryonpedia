class AddCheckToHerbariumAndBestiary < ActiveRecord::Migration[5.2]
  def change
    add_column :bestiaries, :check, :string
    add_column :herbaria, :check, :string
  end
end
