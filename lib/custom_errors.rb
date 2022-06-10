# NoMethodError
# ArgumentError
# SyntaxError
require 'pry'
class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    end
  end

  def itself
    self 
  end
  # binding.pry
  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  
  end

end

beyonce = Person.new("Beyonce")
puts beyonce.get_married('jay')
puts
# puts beyonce.get_married
puts beyonce.name
puts beyonce.itself
puts beyonce
puts Person




