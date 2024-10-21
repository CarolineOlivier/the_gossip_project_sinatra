#`controller.rb` (contrôleur) gère les routes et la logique.

require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require_relative 'gossip'



class ApplicationController < Sinatra::Base
  # Route pour la page d'accueil
  get '/' do
    erb :index, locals: { gossips: Gossip.all }
  end

  # Route pour afficher le formulaire de création d'un nouveau potin
  get '/gossips/new/' do
    erb :new_gossip
  end

  # Route pour traiter le formulaire de création d'un nouveau potin
  post '/gossips/new/' do
    # Création d'un nouveau Gossip avec les paramètres envoyés par le formulaire
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    # Redirection vers la page d'accueil après avoir enregistré le potin
    redirect '/'
  end
end



