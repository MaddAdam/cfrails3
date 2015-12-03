# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create(name: "bike1", description: "bike 1 description", color: "red", image_url: "http://www.ebicycles.com/bicycle-tools/images/mountain-bike-hardtail.gif?1310180857")

Product.create(name: "bike2", description: "bike 2 description", color: "orange", image_url: "http://www.ebicycles.com/bicycle-tools/images/mountain-bike-hardtail.gif?1310180857")

Product.create(name: "bike3", description: "bike 3 description", color: "yellow", image_url: "http://www.ebicycles.com/bicycle-tools/images/mountain-bike-hardtail.gif?1310180857")
