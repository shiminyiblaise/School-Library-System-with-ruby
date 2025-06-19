# student.rb

require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\\(ツ)/¯"
  end
end
# Example usage:
# student = Student.new(16, 'Math 101', 'Alice')
# puts student.play_hooky # Output: ¯\(ツ)/¯
# puts student.can_use_services? # Output: true (if parent_permission is true)
# student.name = 'Bob'
# puts student.name # Output: Bob
# puts student.classroom # Output: Math 101
