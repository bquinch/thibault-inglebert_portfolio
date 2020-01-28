project1 = Project.new(
  category: "Mailing",
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
  category: "Mariage",
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
  category: "T-Shirt",
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
  category: "Cartes de visite",
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
