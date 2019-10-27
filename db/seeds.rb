# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.times  do
	User.create({
		username: 'yasmin',
        email: 'yasmin',
        password: "123",
	})
end

1.times  do
	Product.create({
		name: 'banana',
        price: 10,
	})
end

1.times  do
	Product.create({
		name: 'apple',
        price: 20,
	})
end

1.times  do
	Product.create({
		name: 'orange',
        price: 30,
	})
end

1.times  do
	Coupon.create({
		name: 'Percentual coupon',
		description: "30% of discount",
		code: "percentualcoupon"
	})
end

1.times  do
	Coupon.create({
		name: 'Fixed coupon',
		description: "100 dollares of discount",
		code: "fixedcoupon"

	})
end

1.times  do
	Coupon.create({
		name: 'Free shipping coupon',
		description: "Free shipping coupoun with minimum value of 300.50",
		code: "freeshippingcoupon"

	})
end