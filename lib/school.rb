# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
    end

    def roster
        {}
    end


    def add_student(name, grade)
        @name.roster[grade] = []
        @name.roster[grade] << name
    end

    binding.pry
end

