
def new_habitat_herbarium
    HabitatHerbarium.create!(name: "Partout")
    HabitatHerbarium.create!(name: "Aquatique")
    HabitatHerbarium.create!(name: "Urbain")
    HabitatHerbarium.create!(name: "Montagne")
    HabitatHerbarium.create!(name: "Forêt")
    HabitatHerbarium.create!(name: "Plaine")
    HabitatHerbarium.create!(name: "Autre")
  
    puts "new_habitat_herbarium"
  end
  
  def new_habitat_bestiary
    HabitatBestiary.create!(name: "Partout")
    HabitatBestiary.create!(name: "Aquatique")
    HabitatBestiary.create!(name: "Urbain")
    HabitatBestiary.create!(name: "Montagne")
    HabitatBestiary.create!(name: "Forêt")
    HabitatBestiary.create!(name: "Plaine")
    HabitatBestiary.create!(name: "Autre")
  
    puts "new_habitat_bestiary"
  
  end
  
  def new_rarity_bestiary
    RarityBestiary.create!(name: "Commun")
    RarityBestiary.create!(name: "Peu commun")
    RarityBestiary.create!(name: "Rare")
    RarityBestiary.create!(name: "Très rare")
    RarityBestiary.create!(name: "Légendaire")
  
    puts "new_rarity_bestiary"
  end
  
  def new_rarity_herbarium
    RarityHerbarium.create!(name: "Commun")
    RarityHerbarium.create!(name: "Peu commun")
    RarityHerbarium.create!(name: "Rare")
    RarityHerbarium.create!(name: "Très rare")
    RarityHerbarium.create!(name: "Légendaire")
  
    puts "new_rarity_herbarium"
  end
  
  def new_level
    Level.create!(name: "Inoffensif")
    Level.create!(name: "Faible")
    Level.create!(name: "Moyen")
    Level.create!(name: "Elevé")
    Level.create!(name: "Très dangereux")
    Level.create!(name: "Apocalypse")
  
    puts "new_level"
  end
  
  def new_category
    Category.create!(name: "Aucune")
    Category.create!(name: "Commestibles")
    Category.create!(name: "Toxique")
    Category.create!(name: "Thérapeutique")
    Category.create!(name: "Décorative")
    Category.create!(name: "Autre")
  
    puts "new_category"
  end
  
  def new_season
    Season.create!(name: "Toutes les saisons")
    Season.create!(name: "Saison froide")
    Season.create!(name: "Saison douce")
    Season.create!(name: "Saison chaude")
    Season.create!(name: "Saison fraiche")
  
    puts "new_season"
  end
  
  def perform
    new_category
    new_habitat_bestiary
    new_habitat_herbarium
    new_level
    new_season
    new_rarity_herbarium
    new_rarity_bestiary
  end
  
  perform