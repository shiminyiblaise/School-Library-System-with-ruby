# require_relative 'decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
# # Example usage:
# # capitalize_decorator = CapitalizeDecorator.new(nameable)
