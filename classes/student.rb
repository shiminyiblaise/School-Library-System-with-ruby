require_relative 'person'

class Student < Person
  attr_reader :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super(age, name)
    @parent_permission = parent_permission
  end

  def can_use_services?
    @parent_permission || super
  end
end
