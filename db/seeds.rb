# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Coupon.destroy_all

puts "making seed data"
Coupon.create(coupon_code: "1", store: "Macys")
Coupon.create(coupon_code: "2", store: "Amazon")
Coupon.create(coupon_code: "3", store: "Target")
puts "completed seed data"
