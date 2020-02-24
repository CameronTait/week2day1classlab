class Student
  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_talks()
    return "I can talk!"
  end

  def favourite_programming_language(programming_language)
    return "I love #{programming_language}"
  end


end
