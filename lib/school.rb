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
        if @roster.key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
        
    end


    def grade(grade)
        if @roster.key?(grade)
            return @roster[grade]
        end
    end


    def sort
       @roster.merge(@roster) {|key, value| value.sort}
       #@roster.map do |key,value|
         #   @roster[key] = value.sort
       # end
       # @roster
    end


end




