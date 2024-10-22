# The Gossip Project

Bienvenue dans **The Gossip Project** ! Ce projet est une application web simple développée avec [Sinatra](http://sinatrarb.com/), qui permet de partager et de consulter des potins. Il s'agit d'un exercice pour apprendre les bases du développement web en Ruby avec Sinatra.

## Prérequis

Avant de commencer, assure-toi d'avoir installé les éléments suivants :

- **Ruby 3.2.2** ou une version compatible
- **Bundler** pour la gestion des gemmes
- Un éditeur de texte (ex. Visual Studio Code)

## Installation

1. **Clone le dépôt du projet** :
   git clone git@github.com:CarolineOlivier/the_gossip_project_sinatra.git

Accèder au dossier du projet :
cd the_gossip_project_sinatra

Installer les dépendances :
gem install bundler

**Lancer l'application**

Pour exécuter le projet localement, utilise la commande suivante :
rackup -p 4567  
http://localhost:4567/

# Fonctionnalités
Afficher la liste des potins : La page d'accueil affiche tous les potins partagés.
Ajouter un nouveau potin : Les utilisateurs peuvent soumettre un nouveau potin via un formulaire.
Stockage des potins : Les potins sont enregistrés dans un fichier CSV pour une persistance des données.

# Structure du projet
Voici l'architecture des dossiers :
the_gossip_project_sinatra/
├── lib/
│   ├── controller.rb        # Gère les routes de l'application
│   └── gossip.rb            # Modèle pour manipuler les potins
├── views/
│   ├── index.erb            # Vue pour la page d'accueil
│   └── new_gossip.erb       # Vue pour le formulaire d'ajout de potin
├── db/
│   └── gossip.csv           # Fichier de stockage des potins
├── config.ru                # Fichier de configuration pour Rack
├── Gemfile                  # Liste des gemmes utilisées
└── README.md                # Documentation du projet

# Technologies utilisées
Sinatra : Framework web léger pour Ruby
Ruby : Langage de programmation utilisé pour l'application
CSV : Gemme pour gérer les fichiers CSV (stockage des données)

**Problèmes connus**
Si le serveur affiche un message d'erreur "Sinatra doesn't know this ditty", assure-toi que les routes sont bien configurées et que le serveur utilise le bon port.

**Contribuer**
Les contributions sont les bienvenues ! Si tu souhaites améliorer ce projet, n'hésite pas à ouvrir une pull request ou à signaler un problème dans la section "Issues".

**Auteur**
Caroline Olivier - GitHub

**License**
Ce projet est sous licence MIT - voir le fichier LICENSE pour plus de détails.
