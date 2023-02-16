bob_attributes = { name: "Bob", hair_color: "Brown" }
class Person
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

bob = Person.new(bob_attributes)
puts bob.name 
