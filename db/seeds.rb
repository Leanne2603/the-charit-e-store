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

appeal_1 = Appeal.new(active: true, appeal: "Queensland Drought", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "QLD Farmers", delivery_address: "1 Main Street", region_id: region_3.id)
appeal_1.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Drought.jpg")), 
    filename: "Drought.jpg"
)
appeal_1.save!
appeal_2 = Appeal.new(active: true, appeal: "Victorian Bushfires", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "VIC Fire Brigade", delivery_address: "6 First Avenue", region_id: region_7.id)
appeal_2.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Bushfire.jpg")), 
    filename: "Bushfire.jpg"
)
appeal_2.save!
appeal_3 = Appeal.new(active: true, appeal: "Queensland Bushfires", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "QLD Fire Brigade", delivery_address: "33 Second Street", region_id: region_2.id)
appeal_3.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Bushfire.jpg")), 
    filename: "Bushire.jpg"
)
appeal_3.save!
appeal_4 = Appeal.new(active: true, appeal: "Queensland Cyclone", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "QLD affected residents", delivery_address: "77 Eight Street", region_id: region_3.id)
appeal_4.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Cyclone.jpg")), 
    filename: "Cyclone.jpg"
)
appeal_4.save!
appeal_5 = Appeal.new(active: true, appeal: "New South Wales Floods", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Flood Charity", delivery_address: "2 Lovely Avenue", region_id: region_8.id)
appeal_5.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Flood.jpg")), 
    filename: "Flood.jpg"
)
appeal_5.save!
appeal_6 = Appeal.new(active: true, appeal: "Northern Territory Cyclone", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "NT affected residents", delivery_address: "9 Day Drive", region_id: region_4.id)
appeal_6.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Cyclone.jpg")), 
    filename: "Cyclone.jpg"
)
appeal_6.save!
appeal_7 = Appeal.new(active: true, appeal: "Tasmania Flood", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "The Charity", delivery_address: "57 Tassie Street", region_id: region_9.id)
appeal_7.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Flood.jpg")), 
    filename: "Flood.jpg"
)
appeal_7.save!
appeal_8 = Appeal.new(active: true, appeal: "Christmas", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Santa's Elves", delivery_address: "1 North Pole", region_id: region_10.id)
appeal_8.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Christmas.jpg")), 
    filename: "Christmas.jpg"
)
appeal_8.save!
appeal_9 = Appeal.new(active: true, appeal: "New South Wales Bushfires",  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "NSW affected residents", delivery_address: "908 Sydney Street", region_id: region_8.id)
appeal_9.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Bushfire.jpg")), 
    filename: "Bushfire.jpg"
)
appeal_9.save!
appeal_10 = Appeal.new(active: true, appeal: "Animal Welfare", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Animal Care", delivery_address: "34 Welfare Street", region_id: region_10.id)
appeal_10.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Dogs.jpg")), 
    filename: "Dogs.jpg"
)
appeal_10.save!
appeal_11 = Appeal.new(active: true, appeal: "Wildlife Conservation", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Wildlife Conservation Centre", delivery_address: "898 Kangaroo Street", region_id: region_10.id)
appeal_11.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Koala.jpg")), 
    filename: "Koala.jpg"
)
appeal_11.save!
appeal_12 = Appeal.new(active: true, appeal: "Easter Appeal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum gravida sodales purus ut sodales. Donec scelerisque tellus turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sed magna eros.", recipient: "Royal Children's Hospital", delivery_address: "655 Hospital Street", region_id: region_10.id)
appeal_12.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Easter.jpg")), 
    filename: "Easter.jpg"
)
appeal_12.save!

item_1 = Item.new(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_1])
item_1.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_1.save!
item_2 = Item.new(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_1])
item_2.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_2.save!
item_3 = Item.new(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_1])
item_3.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_3.save!
item_4 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_1])
item_4.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_4.save!
item_1 = Item.new(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_2])
item_1.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_1.save!
item_2 = Item.new(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_2])
item_2.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_2.save!
item_3 = Item.new(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_2])
item_3.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_3.save!
item_4 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_2])
item_4.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_4.save!
item_1 = Item.new(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_3])
item_1.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_1.save!
item_2 = Item.new(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_3])
item_2.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_2.save!
item_3 = Item.new(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_3])
item_3.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_3.save!
item_4 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_3])
item_4.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_4.save!
item_1 = Item.new(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_4])
item_1.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_1.save!
item_2 = Item.new(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_4])
item_2.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_2.save!
item_3 = Item.new(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_4])
item_3.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_3.save!
item_4 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_4])
item_4.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_4.save!
item_1 = Item.new(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_5])
item_1.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_1.save!
item_2 = Item.new(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_5])
item_2.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_2.save!
item_3 = Item.new(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_5])
item_3.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_3.save!
item_4 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_5])
item_4.image.attach(
    io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
    filename: "Money.jpg"
)
item_4.save!
# item_5 = Item.new(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_5])
# item_5.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_5.save!
# item_6 = Item.new(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_6])
# item_6.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_6.save!
# item_7 = Item.new(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_6])
# item_7.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_7.save!
# item_8 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_6])
# item_8.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_8.save!
# item_9 = Item.new(available: true, name: "$5 Donation", price: 5, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_6])
# item_9.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_9.save!
# item_10 = Item.new(available: true, name: "$10 Donation", price: 10, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_7])
# item_10.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_10.save!
# item_11 = Item.new(available: true, name: "$20 Donation", price: 20, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_7])
# item_11.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_11.save!
# item_12 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_7])
# item_12.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_12.save!
# item_13 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_8])
# item_13.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_13.save!
# item_14 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_8])
# item_14.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_14.save!
# item_15 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_8])
# item_15.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_15.save!
# item_16 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_9])
# item_16.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_16.save!
# item_17 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_10])
# item_17.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_17.save!
# item_18 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_11])
# item_18.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_18.save!
# item_19 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_12])
# item_19.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_19.save!
# item_20 = Item.new(available: true, name: "$50 Donation", price: 50, description: "The money donated will be given to purchase crucial items or services", appeals: [appeal_12])
# item_20.image.attach(
#     io: File.open(Rails.root.join("app", "assets", "images", "Money.jpg")), 
#     filename: "Money.jpg"
# )
# item_20.save!