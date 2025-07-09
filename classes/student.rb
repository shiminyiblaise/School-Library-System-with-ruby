require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom = nil, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    self.classroom = classroom unless classroom.nil?
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\\(ツ)/¯"
  end
end
