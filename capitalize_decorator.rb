# capitalize_decorator.rb

require_relative 'decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
# Example usage:
# nameable = Nameable.new
# person = Person.new(20, 'john doe')
# decorated_person = CapitalizeDecorator.new(person)
# puts decorated_person.correct_name # Output: "John doe"
# person.name = 'jane doe'
