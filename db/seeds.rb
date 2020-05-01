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


