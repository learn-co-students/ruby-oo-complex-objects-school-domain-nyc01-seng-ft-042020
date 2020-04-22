class School

    def initialize(name,roster={})
        @name=name
        @roster=roster
    end

    def roster
        @roster
    end

    def add_student(student_name,grade)
        @roster[grade]=[]
        @roster[grade]<<student_name
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