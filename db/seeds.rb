# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sites.destroy_all

Sites.create user_id: 1, url: "yahoo.com", description: "Yahoo", username: "ayaz@example.com", password: "ayazayaz"
Sites.create user_id: 1, url: "gmail.com", description: "Gmail", username: "ayaz15m", password: "ayazayaz"
Sites.create user_id: 2, url: "twitter.com", description: "Gmail2", username: "testtestington7", password: "a123456m"
