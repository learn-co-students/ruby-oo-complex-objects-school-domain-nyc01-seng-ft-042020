class School
    attr_accessor :roster
    def initialize (roster = 0)
        @roster = roster
    end
    def add_student(student, grade)
        @student = student
        @grade = grade
    end
end