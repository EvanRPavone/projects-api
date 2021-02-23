# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.create(
    title: "Favorite Breweries",
    description: "A web application using javascript for the frontend and Rails API to manage the backend.",
    github_url: "https://github.com/EvanRPavone/favorite-breweries-frontend",
    demo_url: "https://www.youtube.com/watch?v=H1ueFQ45Apw&feature=youtu.be&ab_channel=EvanPavone",
    language: "JavaScript",
)

u = User.create(username: "Pavone", password: "test")
u2 = User.create(username: "Sean", password: "test")
u3 = User.create(username: "Hayden", password: "test")
users = [u, u2, u3]

comments = ["Great Project", "I like this", "You could do better for sure", "Well organized code"]

Project.all.each{|project|
    project.comments.create(
        user: users[rand(0..2)],
        project: project,
        text: comments[rand(0..3)]
    )
}