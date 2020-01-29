project1 = Project.new(
  category: "Marketing",
  description: "Invitation pour un petit déjeuner professionel via mailing & Emailing",
  client: "2FPCO",
  date: Date.new(2013, 8, 20)
)

filepaths = [
  'app/assets/images/Brabra/mailing/mailing_1.jpg',
  'app/assets/images/Brabra/mailing/mailing_2.jpg'
]

filepaths.each do |filepath|
  project1.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project1.category}#{project1.client}"
project1.save!

project2 = Project.new(
  category: "Identité visuelle",
  description: "Faire-part de mariage Violette et Aurélien",
  client: "Particulier",
  date: Date.new(2013, 8, 23)
)

filepaths2 = [
  'app/assets/images/Brabra/mariage/violette_aurelien_1.jpg',
  'app/assets/images/Brabra/mariage/violette_aurelien_2.jpg',
  'app/assets/images/Brabra/mariage/violette_aurelien_3.jpg',
  'app/assets/images/Brabra/mariage/violette_aurelien_4.jpg'
]

filepaths2.each do |filepath|
  project2.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project2.category}#{project2.client}"
project2.save!

project3 = Project.new(
  category: "Illustration",
  description: "Création & réalisation de T-Shirts",
  client: "Excel",
  date: Date.new(2013, 9, 2)
)

filepaths3 = [
  'app/assets/images/Brabra/t-shirt/innovate_1.jpg',
  'app/assets/images/Brabra/t-shirt/innovate_2.jpg',
  'app/assets/images/Brabra/t-shirt/innovate_3.jpg'
]

filepaths3.each do |filepath|
  project3.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project3.category}#{project3.client}"
project3.save!

project4 = Project.new(
  category: "Identité visuelle",
  description: "Création & réalisation de cartes de visite",
  client: "2FPCO",
  date: Date.new(2013, 9, 2)
)

filepaths4 = [
  'app/assets/images/Brabra/cartes-visite/pallard_1.jpg',
  'app/assets/images/Brabra/cartes-visite/pallard_2.jpg'
]

filepaths4.each do |filepath|
  project4.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project4.category}#{project4.client}"
project4.save!

project5 = Project.new(
  category: "Édition",
  description: "Création de l'agenda 2014",
  client: "RTE",
  date: Date.new(2013, 9, 20)
)

filepaths5 = [
  'app/assets/images/Brabra/agenda/rte_1.jpg',
  'app/assets/images/Brabra/agenda/rte_3.jpg',
  'app/assets/images/Brabra/agenda/rte_5.jpg'
]

filepaths5.each do |filepath|
  project5.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project5.category}#{project5.client}"
project5.save!

project6 = Project.new(
  category: "Marketing",
  description: "Présentation Powerpoint de 32 pages dans le cadre d'une prospection client auprès de BMW",
  client: "Promedif",
  date: Date.new(2013, 12, 10)
)

filepaths6 = [
  'app/assets/images/Brabra/presentation/promedif-bmw_1.jpg',
  'app/assets/images/Brabra/presentation/promedif-bmw_2.jpg',
  'app/assets/images/Brabra/presentation/promedif-bmw_3.jpg',
  'app/assets/images/Brabra/presentation/promedif-bmw_4.jpg'
]

filepaths6.each do |filepath|
  project6.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project6.category}#{project6.client}"
project6.save!

project7 = Project.new(
  category: "Identité visuelle",
  description: "Logo pour un bar piscine à Saint-Gervais-les-Bains",
  client: "La Pistoche",
  date: Date.new(2014, 6, 1)
)

filepaths7 = [
  'app/assets/images/Brabra/logo/pistoche_1.jpg',
  'app/assets/images/Brabra/logo/pistoche_2.jpg'
]

filepaths7.each do |filepath|
  project7.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project7.category}#{project7.client}"
project7.save!

project8 = Project.new(
  category: "Webdesign",
  description: "Boutique en ligne",
  client: "Secours Populaire",
  date: Date.new(2014, 4, 15)
)

filepaths8 = [
  'app/assets/images/Brabra/webdesign/secours-populaire_1.jpg',
  'app/assets/images/Brabra/webdesign/secours-populaire_2.jpg',
  'app/assets/images/Brabra/webdesign/secours-populaire_3.jpg'
]

filepaths8.each do |filepath|
  project8.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project8.category}#{project8.client}"
project8.save!

project9 = Project.new(
  category: "Édition",
  description: "Retouche & montage photo",
  client: "Particulier",
  date: Date.new(2014, 4, 15)
)

filepaths9 = [
  'app/assets/images/Brabra/retouche/nus_1.jpg',
  'app/assets/images/Brabra/retouche/nus_2.jpg',
  'app/assets/images/Brabra/retouche/nus_3.jpg'
]

filepaths9.each do |filepath|
  project9.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project9.category}#{project9.client}"
project9.save!

project10 = Project.new(
  category: "Identité visuelle",
  description: "Réalisation d’un faire-part de mariage",
  client: "Particulier",
  date: Date.new(2015, 4, 15)
)

filepaths10 = [
  'app/assets/images/Brabra/mariage/jennifer-fx_1.jpg',
  'app/assets/images/Brabra/mariage/jennifer-fx_2.jpg',
  'app/assets/images/Brabra/mariage/jennifer-fx_3.jpg',
  'app/assets/images/Brabra/mariage/jennifer-fx_4.jpg'
]

filepaths10.each do |filepath|
  project10.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project10.category}#{project10.client}"
project10.save!

project11 = Project.new(
  category: "Édition",
  description: "Bon de commande à destination des libraires/revendeurs à l’occasion des 40 ans",
  client: "Fluide Glacial",
  date: Date.new(2015, 4, 28)
)

filepaths11 = [
  'app/assets/images/Brabra/couverture/fluide-glacial-commande_1.jpg',
  'app/assets/images/Brabra/couverture/fluide-glacial-commande_2.jpg',
  'app/assets/images/Brabra/couverture/fluide-glacial-commande_3.jpg',
  'app/assets/images/Brabra/couverture/fluide-glacial-commande_4.jpg'
]

filepaths11.each do |filepath|
  project11.photos.attach(
    io: File.open(filepath),
    filename: filepath.split('/').last
  )
end

p "creating #{project11.category}#{project11.client}"
project11.save!
