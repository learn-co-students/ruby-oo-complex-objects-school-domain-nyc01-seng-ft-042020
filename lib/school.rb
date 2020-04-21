# code here!
require 'pry'

class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name

        roster
        #binding.pry
    end

    def grade(grade)
        roster[grade]
        #binding.pry
    end

    def sort
        roster.each do |grade, name|
            name.sort!
        end
    end


end
