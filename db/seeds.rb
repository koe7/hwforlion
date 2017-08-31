# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create email: 'test1@test.com', name: 'admin1', password: '123456'
User.create email: 'test2@test.com', name: 'admin2', password: '123456'
User.create email: 'test3@test.com', name: 'admin3', password: '123456'
User.create email: 'test4@test.com', name: 'admin4', password: '123456'
