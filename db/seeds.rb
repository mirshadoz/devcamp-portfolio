# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
    Blog.create!(
        title: "This is blog #{blog}",
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    )
end

puts "10 blog posts created!"

5.times do |skill|
    Skill.create!(
        title: "Ruby on Rails #{skill}",
        percent_utilized: 99
    )
end

puts "5 skill created!"

9.times do |p|
    Portfolio.create!(
        title: "Portfolio title: #{p}",
        subtitle: "My great service",
        body: "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200",
        text: "Contrary to popular belief, Lorem Ipsum is not simply random text."
    )
end


puts "9 portfolio items created!"