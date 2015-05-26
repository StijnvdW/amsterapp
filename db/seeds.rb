# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


daysAgo = Array(0..5)

#each day
daysAgo.each do |d|
	#create number of articles
	numberOfArticles = Array(0..(rand*10))

	numberOfArticles.each do |n|
		article = Article.create(title: Faker::Lorem.sentence, link: Faker::Internet.url)
		article.created_at = d.days.ago
		article.save
	end
end