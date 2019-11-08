class Bestiary < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :image, presence: true
  
    belongs_to :habitat_bestiary
    belongs_to :level
    belongs_to :user
    belongs_to :rarity_bestiary
  
  
  
end
