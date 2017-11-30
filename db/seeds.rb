# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


box = Category.create!(:name => 'Box')
circle = Category.create!(:name => 'Circle')
cylinder = Category.create!(:name => 'Cylinder')
shape = Category.create!(:name => 'Shape')
ring = Category.create!(:name => 'Ring')


Item.create!(:name => 'Box One', category: box)
Item.create!(:name => 'Box Two', category: box)
Item.create!(:name => 'Box Three', category: box)
Item.create!(:name => 'Box Four', category: box)

Item.create!(:name => 'Circle one', category: circle)
Item.create!(:name => 'Circle Two', category: circle)
Item.create!(:name => 'Circle Three', category: circle)
Item.create!(:name => 'Circle Four', category: circle)


Item.create!(:name => 'Cylinder one', category: cylinder)
Item.create!(:name => 'Cylinder Two', category: cylinder)
Item.create!(:name => 'Cylinder Three', category: cylinder)
Item.create!(:name => 'Cylinder Four', category: cylinder)



Item.create!(:name => 'Shape one', category: shape)
Item.create!(:name => 'Shape Two', category: shape)
Item.create!(:name => 'Shape Three', category: shape)
Item.create!(:name => 'Shape Four', category: shape)



Item.create!(:name => 'Ring one', category: ring)
Item.create!(:name => 'Ring Two', category: ring)
Item.create!(:name => 'Ring Three', category: ring)
Item.create!(:name => 'Ring Four', category: ring)

