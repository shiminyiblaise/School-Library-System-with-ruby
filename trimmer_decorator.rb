# trimmer_decorator.rb

require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0, 10]
  end
end

# Example usage:
# nameable = Nameable.new
# person = Person.new(20, 'This name is way too long')
# decorated_person = TrimmerDecorator.new(person)
