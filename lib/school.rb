class School
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end
    def roster
        @roster
    end
    # def school_name
    #     @school_name
    # end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end
    def grade(graded)
        roster[graded]
    end
    def sort
        sorted = {}
        roster.each do |grade, students|
        sorted[grade] = students.sort
        end
        sorted
    end

end

