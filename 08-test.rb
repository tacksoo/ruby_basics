
class Semester 
  SPRING_START_MONTH = "02"
  SUMMER_START_MONTH = "05"
  FALL_START_MONTH = "08"
  
  attr_reader :current_semester_indigits
  attr_reader :current_semester_inalphas
  
  def initialize()
    init_current_semester_indigits
    init_current_semester_inalphas
  end
  
  # return current semester digit string 
  # e.g. "201502"
  def init_current_semester_indigits
    year = Time.now.strftime("%Y")
    month = Time.now.strftime("%m").to_i 
    if month.between? 1,5
      @current_semester_indigits = year + SPRING_START_MONTH
    elsif month.between? 6,7
      @current_semester_indigits = year + SUMMER_START_MONTH
    else
      @current_semester_indigits = year + FALL_START_MONTH
    end
  end
  
  # return current semester alphabet string
  # e.g. "Spring 2015"
  def init_current_semester_inalphas
    year = Time.now.strftime("%Y")
    month = Time.now.strftime("%m").to_i 
    if month.between? 1,5
      @current_semester_inalphas = "Spring " + year
    elsif month.between? 6,7
      @current_semester_inalphas = "Summer " + year
    else
      @current_semester_inalphas = "Fall " + year
    end
  end
   
  # return Banner semesters digit string in array
  # Banner is a program used to register for courses
  # this method returns the eight most "convenient"
  # semesters to show on Banner
  # e.g. on december, the next spring semester is display on Banner
  def banner_semesters_indigits(num)
    
  end
  
  # return Banner semesters alphabet string in array
  def banner_semesters_inalphas(num)
    
  end
  
end

spring2015 = Semester.new()
puts spring2015.current_semester_indigits
puts spring2015.current_semester_inalphas