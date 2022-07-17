USERS = 10
POSTS = 20
COMMENTS = 30
MAX_RATING = 5

USERS.times do
  name = Faker::Games::WorldOfWarcraft.hero
  User.create(name: name)
end

POSTS.times do
  title = Faker::Games::WorldOfWarcraft.quote
  text = Faker::Lorem.paragraph
  user_id = Random.rand(USERS)
  Post.create(title: title, text: text, user_id: user_id)
end

COMMENTS.times do
  rating = Random.rand(MAX_RATING)
  text = Faker::Lorem.paragraph
  user_id = Random.rand(USERS)
  post_id = Random.rand(POSTS)
  Comment.create(rating: rating, text: text, user_id: user_id, post_id: post_id)
end


