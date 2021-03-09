# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Luke')

Lead.create(name: 'icode', user_id:1)
Lead.create(name: 'Schlum', user_id:1)
Lead.create(name: 'Mattress', user_id:1)
Lead.create(name: 'Gartner', user_id:1)

Note.create(description: "Got in contact from james from icode", lead_id:1, user_id:1)
Note.create(description: "Emails sara from Matress Firm", lead_id:3, user_id:1)
Note.create(description: "meet eric from icode", lead_id:1, user_id:1)