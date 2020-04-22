# code here!
require 'pry'

class School

    attr_accessor :name, :roster
    # attr_reader :name

# school has empty roster when initialized
    def initialize (name) #(name, student, grade)
        @name = name
        # @student = student
        @roster = {}
    end


# school has roster that will be an empty hash
# hash wll contain keys of grade levels
# value of each grade key will be an array of student names
# roster[grade] = "[student, student, student]"


# add student can add student
# add student can add multiple students to a class (grade)
# add students to different grades
    def add_student(student, grade)
        if @roster.key?(grade)
        # binding.pry
            @roster[grade] << student
        # binding.pry
        else
            @roster[grade] = []
            @roster[grade] << student
        end


    end

# grade is able to retrieve students from a grade
    def grade(grade_class)
        @roster[grade_class]
    end


# roster = {grade => [student, student, student], grade => [student, student, student]}
# sort is able to sort students

# h = { "a" => 100, "b" => 200 }
# h.each_value {|value| puts value }

    def sort
        @roster.each_value do |students|

            students.sort!
        
        end
    end


end


# school = School.new("Bayside High School")