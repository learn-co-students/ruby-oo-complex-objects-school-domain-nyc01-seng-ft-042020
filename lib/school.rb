# code here!
class School
    def initialize(school_name)
        @school_name = school_name
        @roster={}
    end
    def roster
        @roster
    end
    def add_student(student_name,grade)
        @roster[grade]?
        @roster[grade]<<(student_name) : 
            @roster[grade] = [student_name]
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.map do |key,value|
            @roster[key] = value.sort
        end
        @roster.sort.to_h
    end

end

mySchool = School.new('Flatiron')
mySchool.add_student('kyle',10)
mySchool.add_student('john',10)
mySchool.add_student('apple',10)
mySchool.add_student('a',3)
mySchool.add_student('hn',1)
mySchool.add_student('miasfm',9)


mySchool.sort