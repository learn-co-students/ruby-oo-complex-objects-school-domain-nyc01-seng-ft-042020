# code here!
class School
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] ||= [ ]
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each { |grade, students| @roster[grade] = students.sort}
    end
end