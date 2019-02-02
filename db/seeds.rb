# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.create(coupon_code: "half off", store: "Target")
Coupon.create(coupon_code: "BOGO", store: "Walmart")
Coupon.create(coupon_code: "half off", store: "TJ Maxx")
Coupon.create(coupon_code: "10% off", store: "Homegoods")
