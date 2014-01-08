# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

role = Role.create name: 'admin'

u = User.new(email: 'admin@gmail.com', password: '12345678', password_confirmation: '12345678', role_id: role.id)
u.skip_confirmation!
u.save