# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { email: 'jorge@mail', password: '123456' },
  { email: 'huguinho.toledo@mail', password: '123456' },
  { email: 'zezinho.toledo@mail', password: '123456' },
  { email: 'pedrinho.toledo@mail', password: '123456' }
])

list_users = User.ids
list_users.each do |user|
  range_contacts = (1..10)
  range_contacts.each do |contact|
    contacts = Contact.create([
      { name: "Contact_u#{user}_ #{contact}", email: "contact_u#{user}_#{contact}@mail.com", user_id: user }
    ])
  end  
end




