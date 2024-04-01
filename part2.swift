// Créer une liste de dictionnaire contenant ces personnes
var personnes = [
    ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008],
    ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005],
    ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Francois", "sexe": "M", "annee_naissance": 1980],
    ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995]
]

// Affichez le nom de toutes les personnes concaténés avec leurs date de naissance, suivant le format “P est né en X” si c’est un garçon ou “P est née en X” si c’est une fille
print("\n")
for personne in personnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    let annee_naissance = personne["annee_naissance"] as! Int

    let genre = sexe == "M" ? "est né" : "est née"

    print("\(nom) \(genre) en \(annee_naissance)")
}

let anneeActuelle = 2024
let ageMajorite = 18

// Filtrer les personnes majeures
let personnesMajeures = personnes.filter { personne in
    let anneeNaissance = personne["annee_naissance"] as! Int
    let age = anneeActuelle - anneeNaissance
    return age >= ageMajorite
}

// Afficher les noms des personnes majeures
for personne in personnesMajeures {
    let nom = personne["nom"] as! String
    print(nom)
}


// Filtrer et afficher les filles
print("Filles:")
let filles = personnes.filter { personne in
    let sexe = personne["sexe"] as! String
    return sexe == "F"
}
for fille in filles {
    let nom = fille["nom"] as! String
    print(nom)
}

// Filtrer et afficher les garçons
print("\nGarçons:")
let garcons = personnes.filter { personne in
    let sexe = personne["sexe"] as! String
    return sexe == "M"
}
for garcon in garcons {
    let nom = garcon["nom"] as! String
    print(nom)
}

// Définir les données de la nouvelle personne
let nouvellePersonne = [
    "nom": "Sophie",
    "sexe": "F",
    "annee_naissance": 1990
]

// Ajouter la nouvelle personne à la liste existante
personnes.append(nouvellePersonne)

// Afficher le résultat pour vérification
print("Liste mise à jour avec la nouvelle personne:")
for personne in personnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    let annee_naissance = personne["annee_naissance"] as! Int
    print("Nom: \(nom), Sexe: \(sexe), Année de naissance: \(annee_naissance)")
}


