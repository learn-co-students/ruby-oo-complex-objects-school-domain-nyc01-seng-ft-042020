
class School
  def initialize(name)
    @name = name 
  end 
  
  def roster
    school_roster = {}

        
  end

  def add_student(student, grade)

    if !school_roster[grade] 
        school_roster[grade] = []
    else 
        school_roster[grade] << student
    end 
  end 
    
end 

school = School.new("Bayside High School")