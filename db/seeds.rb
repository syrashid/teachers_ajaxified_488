puts 'Creating teachers... 👨‍🏫'

Teacher.create!({
  name: "Sy Rashid",
  campus: "SKorea"
})
Teacher.create!({
  name: "Nico",
  campus: "Barcelona"
})
Teacher.create!({
  name: "Sheila",
  campus: "Melbourne"
})

puts "Finished seeding #{Teacher.count} teachers! 🍎"
