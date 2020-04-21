# code here!
require 'pry'
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map do |key, value|
            @roster[key] = value.sort
        end
        @roster
    end
end