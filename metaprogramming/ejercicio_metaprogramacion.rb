
class Developer
  define_method(:frontend) do |*args|
    args.inject(1, :*)
  end

  class << self
    def create_backend
      singleton_class.send(:define_method, "backend") do
        "born to be wild"
      end
    end
  end
end

developer = Developer.new

#p developer.frontend(2,5,10)

#p developer.backend

Developer.create_backend

#p Developer.backend



class Developer
  ["frontend", "backend"].each do |name|
    define_method("coding_#{name}") do
      p "writing " + name.to_s
    end
  end
end

developer = Developer.new

#developer.coding_frontend
#developer.coding_backend

class Developer
  def method_missing(name, *args, &block)
    return super(name, *args, &block) unless name.to_s =~ /^coding_\w+/

    #self.class.send(:define_method, name) do
    #  p "writing " + name.to_s.gsub(/^coding_/, '').to_s
    #end
    
    self.class.class_eval do
      define_method(name) do 
        p "writing " + name.to_s.gsub(/^coding_/, '').to_s
      end
    end

    self.send(name, *args, &block)
  end
end

developer = Developer.new

developer.coding_frontend
developer.coding_backend
developer.coding_debug
developer.coding_javierº
developer.coding_metaprogramming