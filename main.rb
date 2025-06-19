# main.rb

require_relative 'person'
require_relative 'student'
require_relative 'teacher'

puts "\n--- Creating a Person ---"
person = Person.new(16, 'Alex', false)
puts "#{person.name} can use services? #{person.can_use_services?}"

puts "\n--- Creating a Student ---"
student = Student.new(17, 'Classroom A', 'Jamie')
puts "#{student.name} plays: #{student.play_hooky}"

puts "\n--- Creating a Teacher ---"
teacher = Teacher.new(35, 'Mathematics', 'Mrs. Rose')
puts "#{teacher.name} can use services? #{teacher.can_use_services?}"
puts "#{teacher.name} teaches: #{teacher.specialization}"
puts "\n--- Updating Student's Name ---"
student.name = 'Chris'
puts "Updated Student's Name: #{student.name}"
puts "\n--- Updating Teacher's Specialization ---"
teacher.specialization = 'Physics'
puts "Updated Teacher's Specialization: #{teacher.specialization}"
puts "\n--- Displaying Person's Age ---"
puts "Person's Age: #{person.age}"
