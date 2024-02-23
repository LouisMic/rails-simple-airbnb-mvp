Flat.create!(
  name: 'Appartement spacieux et moderne à Bordeux',
  address: '16 place Pey Berland, 33000 Bordeaux',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 2
)

Flat.create!(
  name: 'Appartement avec terrasse à Bordeux',
  address: '9 rue de Cheverus, 33000 Bordeaux',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 70,
  number_of_guests: 2
)

Flat.create!(
  name: 'Appartement confortable et bien placé à deux pas du Jardin Public',
  address: '2 impasse Hustin, 33000 Bordeaux',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 50,
  number_of_guests: 4
)

Flat.create!(
  name: 'Appartement luxueux et bien décoré à Bordeaux',
  address: '30 rue Fondaudege, 33000 Bordeaux',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 100,
  number_of_guests: 4
)

puts Flat.all.length
