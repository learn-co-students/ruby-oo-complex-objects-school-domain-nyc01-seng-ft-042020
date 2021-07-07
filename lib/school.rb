require 'pry'

# class School
#   def initialize(name)
#     @name = name
#     @roster = {}
#   end
  
#   def add_student(student, grade)

#     if roster[grade] ||= student 
#         roster[grade] << student 
#     end 
    
#   end 

# end 


class School
  def initialize(name)
    @name = name 
    @roster = {} #this allows each school that's initialized to have an empty roster. by putting here, this gives you want you need as soon as initialize is created
  end 

def name 
    @name
end 

def roster
    @roster
end 

def roster=(roster)
    @roster = roster 
end 

def grade(grade)
  @roster[grade]
end 

  def add_student(student, grade)
    
    if !@roster[grade] 
        @roster[grade] = []
        @roster[grade] << student
    else 
        @roster[grade] << student
    end 
  end 

  def sort
    @roster.map do |grade, student|
      @roster[grade] = student.sort 
    end 
    @roster 
  end 
    
end 

school = School.new("Bayside High School")

