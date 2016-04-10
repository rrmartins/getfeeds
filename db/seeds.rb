# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
User.new(email: 'test1@example.com', password: '12341234', password_confirmation: '12341234', name: "test1").save
User.new(email: 'test2@example.com', password: '12341234', password_confirmation: '12341234', name: "test2").save
User.new(email: 'test3@example.com', password: '12341234', password_confirmation: '12341234', name: "test3").save