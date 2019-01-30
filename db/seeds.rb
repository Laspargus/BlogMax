

require 'faker'

User.destroy_all
Article.destroy_all
Categorie.destroy_all
Comment.destroy_all
Like.destroy_all


#Creation User
10.times do |index|
    user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

#Creation Categorie
10.times do |index|
    cat = Categorie.create(name: Faker::Team.name)
end

#Creation Article
10.times do |index|
    article = Article.create(title: Faker::Music.band, content: Faker::Music.album, user_id: "#{User.first}", categorie_id: "#{Categorie.first}")
end

#Creation Commentaire
10.times do |index|
    comment = Comment.create(content: Faker::Shakespeare.hamlet_quote, user_id: "#{User.first}", article_id: "#{Article.first}")
end

#Creation Like
10.times do |index|
    like = Like.create(user_id: "#{User.first}", article_id: "#{Article.first}")
end





 





