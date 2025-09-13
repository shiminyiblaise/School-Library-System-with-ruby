require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown')
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
  end

  def can_use_services?
    of_age?
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
# # Example usage:
# # person = Person.new(25, 'John')