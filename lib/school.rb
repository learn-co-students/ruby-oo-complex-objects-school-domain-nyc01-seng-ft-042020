# code here!
class School
  attr_accessor :roster, :student, :grade
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
    @student = student
    @grade = grade
    @roster[grade] ||= []
    @roster[grade] << student
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    # @roster.sort_by {|k, v| [k, v]}.to_h
    # @roster.map {|k, v| [k, v]}.sort.to_h
    # temp = @roster.sort_by {|k, v| k}.to_h
    @roster.map {|k,v| [k, v.sort]}.to_h
    # @roster.sort_by {|k,v| v.sort}.to_h
  end
end
