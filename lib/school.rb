# code here!

class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster.find do |a, b|
            if a == grade
                return b
            end
        end
    end

    def sort
        alpha_sorted = {}
        roster.each do |a, b|
            alpha_sorted[a] = b.sort
        end
        alpha_sorted
    end
end
