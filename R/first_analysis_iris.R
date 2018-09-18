# Analyse du jeu de données portant sur 3 espèces d'iris (Titre évocateur)
# Engels Guyliann (auteur)
# 2018-09-04 (date de la création du fichier)

# La dièse (#) permet d'ajouter des commentaires
# dans un script R afin de le structurer
###############################################################################
###############################################################################

# Importation des principaux outils permetant l'analyse des données
SciViews::R

# Importation des données
iris <- read(package = "datasets", "iris", lang = "fr")

# Information sur le jeu de données dans R
about("iris")

# Réalisation de graphique ####

## sepal_length vs petal_length
chart(is, sepal_length ~ petal_length) +
  geom_point()

chart(is, sepal_length ~ petal_length %col=% species) +
  geom_point() # Ajout de la couleur pour discriminer les espèces

## sepal_length vs sepal_width
chart(is, sepal_length ~ sepal_width) +
  geom_point()

chart(is, sepal_length ~ sepal_width %col=% species) +
  geom_point()

## petal_length ~ petal_width
chart(is, petal_length ~ petal_width %col=% species) +
geom_point()

#### Proposition d'une optimisation graphique
chart(is, petal_length ~ petal_width %col=% species | species) +
  geom_point(data = select(iris, -species),  color = "grey") +
  geom_point( show.legend = FALSE) +
  scale_color_viridis_d() # optimisation des couleurs avec viridis
