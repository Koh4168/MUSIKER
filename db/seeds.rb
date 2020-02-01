Event.create(text: 'tech-camp@gmail.com', name: 'Mako')
User.create(text: 'tech-camp@gmail.com', name: 'Mako')

require "csv"

users= [
{ username: 'kanritarou', email: 'kanri1@yahoo.com', password: 'test1' },
{ username: 'kanrijirou', email: 'kanri2@yahoo.com', password: 'test2' },
]
users.each do |record|
 User.create!(record) unless User.find_by(email: record[:email])
end

#users_csv = CSV.readlines("db/users.csv")
#users_csv.each do |row|
 # User.create(name: row[1],  text: row[2],image: row[3],link: row[4], email: row[7],encrypted_password: row(8),confirmation_token: row(10),unconfirmed_emai: row(13),reset_password_token: row(14))
#end


#users_csv = CSV.readlines("db/users.csv")
#users_csv.each do |row|
 # User.create(name: row[1],  text: row[2],image: row[3],link: row[4], email: row[7],encrypted_password: row(8),confirmation_token: row(10),unconfirmed_emai: row(13),reset_password_token: row(14))
#end