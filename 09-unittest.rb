require_relative '08-class.rb'
require 'minitest/autorun'

class SemesterTest < Minitest::Test

  def test_current_semester
    spring2015 = Semester.new()
    assert_equal "201502", spring2015.indigit, "Works for spring 2015 (digits)"
    assert_equal "Spring 2015", spring2015.inalpha, "Works for spring 2015 (alphas)"
  end
  
  def test_fall_2010
    fall2010 = Semester.new(Time.new("2010","08"))
    assert_equal "201008", fall2010.indigit, "Works for spring 2010"
  end 
  
  def test_any_summer
     summer2015 = Semester.new(Time.new("2015","07"))
     summer2016 = Semester.new(Time.new("2016","06"))
     
     assert summer2015.inalpha.include? "Summer"
     assert summer2016.inalpha.include? "Summer"
  end
  
  def test_num_of_semeseters_starting_spring2013
    spring2013 = Semester.new(Time.new("2013","02")) 
    past = spring2013.past_semesters_indigits(4) 
    assert_equal 4, past.length, "Returns the correct number of semesters starting from Spring 2013"
  end
  
  def test_last_semester_starting_spring2013
    spring2013 = Semester.new(Time.new("2013","02")) 
    past = spring2013.past_semesters_inalpha(4)
    assert_equal "Fall 2011", past.last, "Returns the correct last semester starting from Spring 2013"
  end
end
