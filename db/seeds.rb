10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
          when an unknown printer took a galley of type and scrambled it to make a type
          specimen book. It has survived not only five centuries, but also the leap into
          electronic typesetting, remaining essentially unchanged. It was popularised 
          in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
          and more recently with desktop publishing software like Aldus PageMaker including
          versions of Lorem Ipsum."
  )
end

5.times do |skills|
  Skill.create!(
    title: "Rails #{skills}",
    percent_utilized: 15
  )
end

9.times do |p_item|
  Portfolio.create!(
    title: "Portfolio title: #{p_item}",
    subtitle: "My greta service",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    main_image: "http://placehold.jp/600x400.png" ,
    thumb_image: "http://placehold.jp/350x200.png"
  )
end

puts "10 blogs created"
puts "5 skills created"
puts "9 portfolio items created"