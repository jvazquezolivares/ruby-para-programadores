
class Shoe
  attr_accessor :title, :brand, :size

  def initialize(title, brand, size)
    @title = title
    @brand = brand
    @size = size
  end

  def self.create_method(name)
    define_method("#{name}_details") do |*args|
      puts "This shoe is a #{self.brand}, size: #{self.size}"
      p args
    end
  end
end

nike = Shoe.new("nikes", "nike", "12")
crocs = Shoe.new("crocs", "croc", "10")
sandals = Shoe.new("sandals", "American Eagle", "11")

Shoe.create_method(nike.title)
Shoe.create_method(crocs.title)
Shoe.create_method(sandals.title)

nike.nikes_details("Test", "Test2")
crocs.crocs_details
sandals.sandals_details