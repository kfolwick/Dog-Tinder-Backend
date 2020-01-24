# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },, { name: 'Lord of the Rings'    },])
#   Character.create(name: 'Luke', movie: movies.first)


dog_attributes = [
  {
    name: 'Felix',
    age: 3,
    size: 'medium',
    enjoys: 'Long naps on the couch, and a warm fire.'
},
  {
    name: 'Homer',
    age: 12,
    size: 'medium',
    enjoys: 'Food mostly, really just food.'
},
  {
    name: 'Cade',
    age: 8,
    size: 'medium',
    enjoys: 'Licking human faces.'
},
  {
    name: 'Peter jr.',
    age: 10,
    size: 'smol',
    enjoys: 'Peeing on the couch.'
},
  {
    name: 'Fear',
    age: 1,
    size: 'medium',
    enjoys: 'Barking allllllll the time.'
},
  {
    name: 'Cash',
    age: 13,
    size: 'medium',
    enjoys: 'Being a cutie.'
},
  {
    name: 'Lol',
    age: 3,
    size: 'large',
    enjoys: 'Making bad jokes.'
},
  {
    name: 'Snickerdoodle',
    age: 15,
    size: 'large',
    enjoys: 'Smelling like old farts.'
},
  {
    name: 'Boogie',
    age: 5,
    size: 'smol',
    enjoys: 'Food mostly, really just food.'
},
  {
    name: '404',
    age: 1,
    size: 'medium',
    enjoys: 'Hiding.'
},
  {
    name: 'Sweet Suga',
    age: 17,
    size: 'large',
    enjoys: 'Belly rubs all day.'
},
  {
    name: 'Buddy',
    age: 17,
    size: 'medium',
    enjoys: 'Being your friend.'
},
  {
    name: 'Princess',
    age: 8,
    size: 'smol',
    enjoys: 'Getting spoiled.'
},
  {
    name: 'PupperNickle',
    age: 8,
    size: 'medium',
    enjoys: 'Stealing food off the counter.'
},
  {
    name: 'Matt',
    age: 9,
    size: 'smol',
    enjoys: 'Coding, mostly.'
},


]

dog_attributes.each do |attributes|
  Dog.create(attributes)
end
