# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserHand.destroy_all
DealerHand.destroy_all
User.destroy_all
Dealer.destroy_all
Game.destroy_all

game = Game.create(min_bet: 1, max_bet: 10)
hadi = User.create(name: "Hadi",password: "123",tokens: 1000000, picture:"https://www.history.com/.image/t_share/MTU3ODc4NjA0NTkxODY3NjE1/image-placeholder-title.jpg")
andre = Dealer.create(name:"Andre", picture: "https://i.pinimg.com/originals/78/d1/7e/78d17e8f4a5228e105ebf139f46753a3.jpg")

h_hand1 = UserHand.create(bet:10, user: hadi, game: game)
a_hand1 = DealerHand.create(dealer: andre, game: game)
