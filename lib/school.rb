# code here!
class School
#add getter and setter methods to the roster instance variable
    attr_accessor :roster

    #initialize name and empty roster hash upon creation 
    def initialize(name)
    @name = name
    @roster = {}
    end
    
    #if the grade is present in the roster, add the student name to the value
    def add_student(student_name, grade)
    if @roster[grade]
        @roster[grade].push(student_name)
    else
        #if not present, create the key and empty array value and add 
        #the student name to it
        @roster[grade] = []
        @roster[grade].push(student_name)
    end
    end
      
    #iterate through the hash at the given grade key 
    #and return a new array of the student names
    def grade(grade)
    @roster[grade].map do |element|
      element
    end
    end
    
    #iterate through the @roster hash and sort the arrays in place. 
    def sort
      @roster.each do |k,v|
      v = v.sort!
      end
      
    end

  end