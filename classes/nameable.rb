# nameable.rb
class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end
# Example usage:
# class Person < Nameable