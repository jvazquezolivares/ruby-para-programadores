
class Developer
end

Developer.instance_eval do
  p "instance_eval - self is: #{self.to_s}"
  def backend
    p "inside a method, self is: #{self.to_s}"
  end
end

Developer.backend

javier = Developer.new

javier.instance_eval do
  p "instance_eval - self is: #{self.to_s}"
  def frontend
    p "inside a method, self is: #{self.to_s}"
  end
end

javier.frontend

nombre = "Javier"

if nombre.eql?("Javier")
  String.class_eval do
    def to_array
      self.split("_")
    end
  end
end

p "javier_vazquez_olivares_es_programador_ruby".to_array