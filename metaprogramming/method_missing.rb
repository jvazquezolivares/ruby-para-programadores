
class Book
  attr_accessor :title

  def method_missing(method_name, *arguments, &block)
    puts method_name.to_s + " does not exist"
  end
end

#Book.new.test_method

class Subject
  attr_reader :grades

  def initialize
    @grades = [
      { subject: "math", student: "James", grade: 100 },
      { subject: "science", student: "James", grade: 90 },
      { subject: "math", student: "Sara", grade: 75 },
      { subject: "science", student: "Sara", grade: 100 },
    ]
  end

  def get_grade(subject, student)
    grades.find {|grade| grade[:subject] == subject && grade[:student] == student}.fetch(:grade)
  end
end

#p Subject.new.get_grade("math", "James")

class Student
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def method_missing(method_name, *args, &block)
    if method_name.to_s.start_with?("get_grade_for")
      subject = method_name.to_s.split("_").last
      grade = Subject.new.get_grade(subject, self.name)
      "You got #{grade} in #{subject}"
    else
      super
    end
  end
end

james = Student.new("James")
p james.get_grade_for_science
p james.get_grade_for_math

sara = Student.new("Sara")
p sara.get_grade_for_math
p sara.get_grade_for_science

sara.loquesea