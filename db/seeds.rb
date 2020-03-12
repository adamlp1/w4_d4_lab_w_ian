require_relative('../models/student')
require_relative('../models/house')
require('pry-byebug')


Student.delete_all
House.delete_all

house1 = House.new({
  "name" => "Gryffindor",
  "url" => "https://www.logolynx.com/topic/harry+potter+gryffindor"
  })

house2 = House.new({
  "name" => "Hufflepuff",
  "url" => "https://www.logolynx.com/topic/harry+potter+hufflepuff"
  })

house3 = House.new({
  "name" => "Slytherin",
  "url" => "https://www.logolynx.com/topic/harry+potter+slytherin"
  })

house4 = House.new({
  "name" => "Ravenclaw",
  "url" => "https://www.logolynx.com/topic/harry+potter+ravenclaw"
  })

  house1.save
  house2.save
  house3.save
  house4.save

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "age" => 18,
  "house_id" => house1.id
})

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "age" => 18,
  "house_id" => house1.id
})

student3 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "age" => 18,
  "house_id" => house1.id
})

student1.save
student2.save
student3.save

student1.house

binding.pry
nil
