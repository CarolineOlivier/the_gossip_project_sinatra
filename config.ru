require 'bundler'
Bundler.require

$:.unshift File.expand_path("./lib", __FILE__) # Indique où chercher les fichiers Ruby
require 'controller' # Fait appel au contrôleur

run ApplicationController # Lance l'application via la classe ApplicationController
