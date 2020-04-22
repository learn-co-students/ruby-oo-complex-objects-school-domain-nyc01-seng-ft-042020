# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end


    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        roster.map do |key, value|
            roster[key] = value.sort
        end
        roster
    end
end

