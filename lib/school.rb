# code here!
require 'pry'
class School
  attr_accessor :school_name, :roster
  def initialize(school_name=nil, roster={})
    @school_name = school_name
    @roster = roster
  end

 def add_student(students, *args, grade)
   if @roster.has_key?(grade)
       @roster[grade] << students
   else
     @roster.store(grade, [students])
   end
 end

 def grade(num=nil)
   @roster[num]
end

def sort
  roster.each_value{|students| students.sort!}
  end
end


school = School.new("Test School")
