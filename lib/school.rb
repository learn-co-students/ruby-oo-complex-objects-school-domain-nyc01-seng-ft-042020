require 'pry'
class School
    attr_accessor :roster, :name, :grade
  def initialize (school)
    @school= school
    @roster = {}
  end
  def add_student(name, grade) 
    @name = name
    @grade = grade
  
     @roster[grade] ||= []
     @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
  @roster.each do |student, grade|
      grade.sort_by
end
end
end





