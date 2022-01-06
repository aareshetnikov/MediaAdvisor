# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movies: movies.first)
unless Movie.any?
movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings:The Fellowship of the Ring' }, 
                       { name: 'Fight Club' }, {name: 'Lord of the Rings:The Two Towers'}])
end

unless Book.any?
books = Book.create([{ name: 'Lord of the Flies' }, { name: 'Dead Souls' }, { name: 'Martin Eden' }])
end

unless Game.any?
games = Game.create([{ name: 'Disco Elysium' }, { name: 'Grand Theft Auto IV' }, { name: 'Dishonored' }])
end


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?