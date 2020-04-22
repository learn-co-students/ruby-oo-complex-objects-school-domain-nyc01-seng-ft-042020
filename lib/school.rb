class School
        def initialize(school_name)
            @school_name = school_name
            @roster = {}
        end

        def roster 
          @roster
        end

        def add_student (name, grade)
            roster[grade] ||= []
            roster[grade] << name
            roster
        end

        def grade (grade)
          roster[grade]
        end

        def sort
          new_sorted_hash = {}
            roster.each do |grade, name|
                new_sorted_hash[grade] = name.sort
              end
          new_sorted_hash 
        end

end