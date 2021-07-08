# code here!
class School
    attr_accessor :roster
    
    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= [ ]
        @roster[grade] << name 
    end

    def grade(grade)
        @roster[grade] 
    end
    def sort
        hash = {}
        roster.each do |grade, name|
            hash[grade] = name.sort
        end
        hash
    end
   
end
