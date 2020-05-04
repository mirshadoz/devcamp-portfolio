
3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end

puts "3 Topic items created successfully!"

5.times do |blog|
  Blog.create!(
    title: "Blog Title #{blog}",
    body: "Cupcake ipsum dolor sit amet carrot cake gummi bears bonbon. Sweet roll sweet carrot cake pastry biscuit pudding. Pie chupa chups cookie.",
    topic_id: Topic.last.id
  )
end  

puts "5 Blog items created successfully!"

8.times do |item|
  Portfolio.create!(
    title: "Portfolio Title #{item}", 
    subtitle: "Ruby on Rails", 
    body: "Some Body Text", 
    main_image: "https://via.placeholder.com/600x400", 
    thumb_image: "https://via.placeholder.com/300x150", 
    text: "Some text"
  )
end

2.times do |item|
  Portfolio.create!(
    title: "Portfolio Title #{item}", 
    subtitle: "Angular", 
    body: "Some Body Text", 
    main_image: "https://via.placeholder.com/600x400", 
    thumb_image: "https://via.placeholder.com/300x150", 
    text: "Some text"
  )
end

puts "10 Portfolio items created successfully!"

5.times do |skill|
  Skill.create!(
    title: "Skill #{skill}",
    percent_utilized: 100
  )
end

puts "5 Skill items created successfully!"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )

end

puts "3 Technologies items created successfully!"

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
