require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../student')

class TestStudent < MiniTest::Test
  def test_get_student_name
   student = Student.new('Bob', 'e38')
   assert_equal('Bob', student.name)
  end

  def test_set_student_cohort
    student = Student.new('Bob', 'e38')
    student.cohort = "e37"
    assert_equal('e37', student.cohort)
  end


  def test_student_talks
    student = Student.new('Bob', 'e38')
    assert_equal("I can talk!", student.student_talks)
  end

  def test_favourite_programming_language
    student = Student.new('Bob', 'e38')
    assert_equal("I love Ruby", student.favourite_programming_language("Ruby"))
  end
end
