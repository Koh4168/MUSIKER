# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

users_csv = CSV.readlines("db/users.csv")
users_csv.each do |row|
  User.create(name: row[1],  text: row[2],image: row[3],link: row[4], email: row[7],encrypted_password: row(8),confirmation_token: row(10),unconfirmed_emai: row(13),reset_password_token: row(14))
end
