# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Obj.destroy_all
Repository.destroy_all

@repo1 = Repository.create!(name: 'Repository 1')
@repo2 = Repository.create!(name: 'Repository 2')
@repo3 = Repository.create!(name: 'Repository 3')
@repo4 = Repository.create!(name: 'Repository 4')

puts "#{Repository.count} repositories created!"

@obj1 = Obj.create!(size: '1234', repository: @repo1)
@obj2 = Obj.create!(size: '434321', repository: @repo1)
@obj3 = Obj.create!(size: '563478', repository: @repo2)
@obj4 = Obj.create!(size: '876435', repository: @repo2)
@obj5 = Obj.create!(size: '9876', repository: @repo3)
@obj6 = Obj.create!(size: '544532', repository: @repo3)
@obj7 = Obj.create!(size: '1111', repository: @repo4)
@obj8 = Obj.create!(size: '135837', repository: @repo4)

puts "#{Obj.count} objects created!"