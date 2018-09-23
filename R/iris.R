# Analyse du jeu de données portant sur 3 espèces d'iris (titre évocateur)
# Engels Guyliann (auteur)
# 2018-09-04 (date de la création du fichier)

# Note: le dièse (#) permet d'ajouter des commentaires dans un script


# setup -------------------------------------------------------------------
# Importation des principaux outils nécessaires
SciViews::R


# importation -------------------------------------------------------------
iris <- read("iris", package = "datasets", lang = "fr")

View(iris)
.?iris


# graphiques --------------------------------------------------------------

# sepal_length vs sepal_width
chart(iris, sepal_length ~ sepal_width) +
  geom_point()

# Ajout de la couleur pour discriminer les espèces
chart(iris, sepal_length ~ sepal_width %col=% species) +
  geom_point()

# petal_length ~ petal_width
chart(iris, petal_length ~ petal_width %col=% species) +
  geom_point()

# sepal_length vs petal_length
chart(iris, sepal_length ~ petal_length %col=% species) +
  geom_point()
