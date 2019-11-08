class Herbarium < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :image, presence: true

    belongs_to :user
    belongs_to :category
    belongs_to :habitat_herbarium
    belongs_to :season
    belongs_to :rarity_herbarium
end
