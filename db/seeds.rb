# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



appeal_1 = Appeal.create!(active: true, appeal: "Queensland Drought", recipient: "QLD Farmers", delivery_address: "1 Main Street", region_id: [region_3])
appeal_1.image.attach(io: File.open('./app/assets/images'), filename: 'Drought.jpg')
appeal_2 = Appeal.create!(active: true, appeal: "Victorian Bushfires", recipient: "VIC Fire Brigade", delivery_address: "6 First Avenue", region_id: [region_7])
appeal_2.image.attach(io: File.open('./app/assets/images'), filename: 'Bushfire.jpg')
appeal_3 = Appeal.create!(active: true, appeal: "Queensland Bushfires", recipient: "QLD Fire Brigade", delivery_address: "33 Second Street", region_id: [region_2])
appeal_3.image.attach(io: File.open('./app/assets/images'), filename: 'Bushfire.jpg')
appeal_4 = Appeal.create!(active: true, appeal: "Queensland Cyclone", recipient: "QLD affected residents", delivery_address: "77 Eight Street", region_id: [region_3])
appeal_4.image.attach(io: File.open('./app/assets/images'), filename: 'Cyclone.jpg')
appeal_5 = Appeal.create!(active: true, appeal: "New South Wales Floods", recipient: "Flood Charity", delivery_address: "2 Lovely Avenue", region_id: [region_8])
appeal_5.image.attach(io: File.open('./app/assets/images'), filename: 'Flood.jpg')
appeal_6 = Appeal.create!(active: true, appeal: "Northern Territory Cyclone", recipient: "NT affected residents", delivery_address: "9 Day Drive", region_id: [region_4])
appeal_6.image.attach(io: File.open('./app/assets/images'), filename: 'Cyclone.jpg')
appeal_7 = Appeal.create!(active: true, appeal: "Tasmania Flood", recipient: "The Charity", delivery_address: "57 Tassie Street", region_id: [region_9])
appeal_7.image.attach(io: File.open('./app/assets/images'), filename: 'Flood.jpg')
appeal_8 = Appeal.create!(active: true, appeal: "Christmas", recipient: "Santa's Elves", delivery_address: "1 North Pole", region_id: [region_10])
appeal_8.image.attach(io: File.open('./app/assets/images'), filename: 'Christmas.jpg')
appeal_9 = Appeal.create!(active: true, appeal: "New South Wales Bushfires", recipient: "NSW affected residents", delivery_address: "908 Sydney Street", region_id: [region_8])
appeal_9.image.attach(io: File.open('./app/assets/images'), filename: 'Bushfire.jpg')
appeal_10 = Appeal.create!(active: true, appeal: "Animal Welfare", recipient: "Animal Care", delivery_address: "34 Welfare Street", region_id: [region_10])
appeal_10.image.attach(io: File.open('./app/assets/images'), filename: 'Dogs.jpg')
appeal_11 = Appeal.create!(active: true, appeal: "Wildlife Conservation", recipient: "Wildlife Conservation Centre", delivery_address: "898 Kangaroo Street", region_id: [region_10])
appeal_11.image.attach(io: File.open('./app/assets/images'), filename: 'Koala.jpg')

item_1 = Item.create!(available: true, name: "$5 Donation", price: 5, desription: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_1.image.attach(io: File.open('./app/assets/images'), filename: 'Money.jpg')
item_2 = Item.create!(available: true, name: "$10 Donation", price: 10, desription: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_2.image.attach(io: File.open('./app/assets/images'), filename: 'Money.jpg')
item_3 = Item.create!(available: true, name: "$20 Donation", price: 20, desription: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_3.image.attach(io: File.open('./app/assets/images'), filename: 'Money.jpg')
item_4 = Item.create!(available: true, name: "$50 Donation", price: 50, desription: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_4.image.attach(io: File.open('./app/assets/images'), filename: 'Money.jpg')
