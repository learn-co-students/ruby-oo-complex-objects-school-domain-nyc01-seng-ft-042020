require 'pry'

class School
    attr_accessor :roster 

    def initialize(roster)
        @roster = {}  
    end 

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name 
    end 

    def grade(grade)
        @roster[grade]        
    end

    def sort
    # returns a new hash (of the roster) with the students' names (per grade level) in alphabetical order.  
        sorted = {} 
        roster.each do |grade, names|
            sorted[grade] = names.sort 
        end 
        sorted   
    end 

end