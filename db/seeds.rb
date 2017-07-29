# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.delete_all
Item.create({id: 1, name: "BabyButter 4oz", description: "We have created our own line of baby butter featuring ethically sourced ingredients. This 98% organic moisturizer is free of preservative agents, parabens, and phthalates. No fragrance added.", price: 14.95, active: true})

Item.create({id: 2, name: "BabyButter 2oz", description: "We have created our own line of baby butter featuring ethically sourced ingredients. This 98% organic moisturizer is free of preservative agents, parabens, and phthalates. No fragrance added.", price: 7.95, active: true})


OrderStatus.delete_all
OrderStatus.create({id: 1, name: "In Progress"})
OrderStatus.create({id:2, name: "Placed"})
OrderStatus.create({id: 3, name: "Shipped"})
OrderStatus.create({id:4, name: "Cancelled"})
