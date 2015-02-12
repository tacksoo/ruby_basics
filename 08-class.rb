
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
  
  def to_s
    "#{@inalpha} - #{@indigit}" 
  end
end
