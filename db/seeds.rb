# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..20).each do |number|
  User.create(name: "test_name_" + number.to_s, email: "test" + number.to_s + "@examle.com", password: "test_000" + number.to_s)
end