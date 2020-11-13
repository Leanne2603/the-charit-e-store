# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Region.destroy_all
Item.destroy_all
Appeal.destroy_all

region_1 = Region.create!(region: "Tropical North QLD")
region_2 = Region.create!(region: "Southern QLD")
region_3 = Region.create!(region: "Outback QLD")
region_4 = Region.create!(region: "Northern Territory")
region_5 = Region.create!(region: "Perth")
region_6 = Region.create!(region: "QLD Islands")
region_7 = Region.create!(region: "Regional VIC")
region_8 = Region.create!(region: "Regional NSW")
region_9 = Region.create!(region: "Hobart")
region_10 = Region.create!(region: "Various Regions")

appeal_1 = Appeal.create!(active: true, appeal: "Queensland Drought", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "QLD Farmers", delivery_address: "1 Main Street", region_id: region_3.id)
appeal_1.image.attach(io: File.open("/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store"), filename: "Drought.jpg")
appeal_2 = Appeal.create!(active: true, appeal: "Victorian Bushfires", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "VIC Fire Brigade", delivery_address: "6 First Avenue", region_id: region_7.id)
appeal_2.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Bushfire.jpg'), filename: "Bushfire.jpg")
appeal_3 = Appeal.create!(active: true, appeal: "Queensland Bushfires", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "QLD Fire Brigade", delivery_address: "33 Second Street", region_id: region_2.id)
appeal_3.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Bushfire.jpg'), filename: "Bushfire.jpg")
appeal_4 = Appeal.create!(active: true, appeal: "Queensland Cyclone", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "QLD affected residents", delivery_address: "77 Eight Street", region_id: region_3.id)
appeal_4.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Cyclone.jpg'), filename: "Cyclone.jpg")
appeal_5 = Appeal.create!(active: true, appeal: "New South Wales Floods", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Flood Charity", delivery_address: "2 Lovely Avenue", region_id: region_8.id)
appeal_5.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Flood.jpg'), filename: "Flood.jpg")
appeal_6 = Appeal.create!(active: true, appeal: "Northern Territory Cyclone", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "NT affected residents", delivery_address: "9 Day Drive", region_id: region_4.id)
appeal_6.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Cyclone.jpg'), filename: "Cyclone.jpg")
appeal_7 = Appeal.create!(active: true, appeal: "Tasmania Flood", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "The Charity", delivery_address: "57 Tassie Street", region_id: region_9.id)
appeal_7.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Flood.jpg'), filename: "Flood.jpg")
appeal_8 = Appeal.create!(active: true, appeal: "Christmas", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Santa's Elves", delivery_address: "1 North Pole", region_id: region_10.id)
appeal_8.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Christmas.jpg'), filename: "Christmas.jpg")
appeal_9 = Appeal.create!(active: true, appeal: "New South Wales Bushfires",  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "NSW affected residents", delivery_address: "908 Sydney Street", region_id: region_8.id)
appeal_9.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Bushfire.jpg'), filename: "Bushfire.jpg")
appeal_10 = Appeal.create!(active: true, appeal: "Animal Welfare", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Animal Care", delivery_address: "34 Welfare Street", region_id: region_10.id)
appeal_10.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Dogs.jpg'), filename: "Dogs.jpg")
appeal_11 = Appeal.create!(active: true, appeal: "Wildlife Conservation", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Wildlife Conservation Centre", delivery_address: "898 Kangaroo Street", region_id: region_10.id)
appeal_11.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Koala.jpg'), filename: "Koala.jpg")

item_1 = Item.create!(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_1.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Money.jpg'), filename: "Money.jpg")
item_2 = Item.create!(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_2.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Money.jpg'), filename: "Money.jpg")
item_3 = Item.create!(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_3.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Money.jpg'), filename: "Money.jpg")
item_4 = Item.create!(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
item_4.image.attach(io: File.open('/home/leannestranks/CoderAcademy/LeanneStranks_T2A2/src/the-charit-e-store/app/assets/images/Money.jpg'), filename: "Money.jpg")