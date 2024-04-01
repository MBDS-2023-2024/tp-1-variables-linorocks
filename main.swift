// Création de tableau
var liste = ["bateau", "voiture", "vélo", "avion", "bus", "train" , "moto"]

// Affichez les mots se trouvant aux indices 2, 3 et 20
print(liste[2])
print(liste[3])

let index = 20
if index < liste.count
{
  print(liste[20])
}else
{
  print("Votre index est supérieur à la taille de votre tableau")
}

// Affichez tous les mots de la liste sous la forme Moyen de transport numéro [i] est [mot]
print("\n")
for i in 0..<liste.count
{
  print("Moyens de transport numéro \(i) est \(liste[i])")
}

// Trouvez et affichez les mots aux indices impairs
print("\n")
for i in 0..<liste.count
{
  if i%2 != 0
  {
    print("Moyens de transport numéro \(i) est \(liste[i])")
  }
}

// Trouvez et affichez les mots aux indices impairs
print("\n")
for i in 0..<liste.count
{
  if i%2 == 0
  {
    print("Moyens de transport numéro \(i) est \(liste[i])")
  }
}

// Inversez l’ordre du tableau puis stockez le résultat dans un nouveau tableau 
print("\n")
var newListe = [String]()
for i in 0..<liste.count
{
  newListe.append(liste[liste.count-i-1])
}
print(newListe)

// Insérez les mots suivants ‘camion’, ‘taxi’
print("\n")  
var nouveau_mots = ["camion", "taxi"]

// Insertion au début
print("\n")
var insertion_debut = nouveau_mots + liste
print(insertion_debut)

// Insertion à la fin
print("\n")
var insertion_fin = liste + nouveau_mots
print(insertion_fin)

// Insertion à partir de l'index 2
print("\n")
liste[2] = "camion"
liste[3] = "taxi"
print(liste)