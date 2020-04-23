# code here!
require 'pry'

class School 
    attr_reader :school_name
    attr_reader :roster
    attr_reader :sort

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
        #instance variable @school_name = the school name that is passed
        #at initialization
    end
    def add_student(student_name, grade)
        @roster[grade] ||= [ ]
        @roster[grade] << student_name
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
      sorted_hash = {}
        @roster.each do |grade, name_array|
           sorted_hash[grade] = name_array.sort
        end 
        sorted_hash
    end
end 


