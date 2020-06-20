# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

4.times { Category.create(name: Faker::Lorem.word) }
4.times { User.create(name: Faker::Name.name, email: Faker::Internet.email) }


categories = Category.all.to_a
users = User.all.to_a

10_000.times do
	post = Post.create(category_id: categories.sample.id, title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)

	3.times do
		Comment.create(post_id: post.id, user_id: users.sample.id, note: Faker::Lorem.paragraph)
	end
end