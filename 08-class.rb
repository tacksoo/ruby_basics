
class Semester 
  SPRING_START_MONTH = "02"
  SUMMER_START_MONTH = "05"
  FALL_START_MONTH = "08"
  
  attr_reader :indigit
  attr_reader :inalpha
  
  def initialize(now=Time.now)
    init_indigit(now)
    init_inalpha(now)
  end
  
  # return semester digit string 
  # e.g. "201502"
  def init_indigit(now)
    year = now.strftime("%Y")
    month = now.strftime("%m").to_i 
    if month.between? 1,5
      @indigit = year + SPRING_START_MONTH
    elsif month.between? 6,7
      @indigit = year + SUMMER_START_MONTH
    else
      @indigit = year + FALL_START_MONTH
    end
  end
  
  # return semester alphabet string
  # e.g. "Spring 2015"
  def init_inalpha(now)
    year = now.strftime("%Y")
    month = now.strftime("%m").to_i 
    if month.between? 1,5
      @inalpha = "Spring " + year
    elsif month.between? 6,7
      @inalpha = "Summer " + year
    else
      @inalpha = "Fall " + year
    end
  end
   
  # return past semesters in array (in digits format e.g. 201502)
  def past_semesters_indigit(num)
    raise NotImplementedError
  end
  
  # return past semesters in array (in alphas format e.g. Spring 2015)
  def past_semesters_inalpha(num)
    raise NotImplementedError
  end
  
  # return previous semester (e.g. 201302 returns 201208)
  def previous_semester_indigit
    year = @indigit[0..3]
    term = @indigit[4..-1]
    previous_semester = ""
    if term == SPRING_START_MONTH
      previous_semester = (year.to_i - 1).to_s + FALL_START_MONTH
    elsif term == SUMMER_START_MONTH
      previous_semester = year + SPRING_START_MONTH
    else
      previous_semester = year + SUMMER_START_MONTH
    end
  end
  
  def previous_semester_inalpha
    year = @inalpha.split.last
    term = @inalpha.split.first
    previous_semester = ""
    if term == "Spring" 
      previous_semester = "Fall " + (year.to_i - 1).to_s
    elsif term == "Summer"
      previous_semester = "Spring " + year
    else
      previous_semester = "Summer " + year
    end
  end
  
  def to_s
    "#{@inalpha} - #{@indigit}" 
  end
end
