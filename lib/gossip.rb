#`gossip.rb` (modèle) gère les données.

require 'csv'

class Gossip
  attr_accessor :author, :content

  # Initialisation d'un nouveau Gossip avec un auteur et un contenu
  def initialize(author, content)
    @author = author
    @content = content
  end

  # Sauvegarde le Gossip dans le fichier CSV
  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [author, content]
    end
  end

  # Méthode de classe pour récupérer tous les Gossips
  def self.all
    all_gossips = []
    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end
end
