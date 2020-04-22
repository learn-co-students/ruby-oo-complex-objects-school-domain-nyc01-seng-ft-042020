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
        @roster.sort_by{ |name, grade| name }.to_h
    end
   

end
