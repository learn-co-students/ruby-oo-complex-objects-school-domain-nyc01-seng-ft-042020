class School
    attr_accessor :roster, :name
    def initialize (name)
        @roster = {}
    end
    def roster=(roster)
        @roster = roster
    end
    def roster
        @roster
    end
    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
        @roster
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |key, value|
            value.sort!
        end
    end
end