# teacher.rb

require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
# Example usage:
# teacher = Teacher.new(30, 'Mathematics', 'Mr. Smith')
# puts teacher.can_use_services? # Output: true
# puts teacher.specialization # Output: Mathematics
