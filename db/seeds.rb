# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Role.destroy_all
role = Role.create name: 'admin'

u = User.new(email: 'admin@gmail.com', password: 'secret11', password_confirmation: 'secret11', role_id: role.id)
u.skip_confirmation!
u.save!