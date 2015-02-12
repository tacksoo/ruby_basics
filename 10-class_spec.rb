require '08-class.rb'

# 1. install rspec gem
#       gem install spec
#  2. run 
#       rspec --init
#  3. copy "08-class.rb" file into "lib" directory
#  4. copy this file into "spec" directory
#  5. run
#       rspec --format doc 
  
describe Semester do
  before :each do
    # insert code to run before executing each example
  end
  
  it "should be Spring 2015 when run on 2/11/2015 - 5/31/2015" do
    semester = Semester.new() 
    expect(semester.inalpha).to eq "Spring 2015"
  end 
  
  it "should be 201502 when run on 2/11/2015 - 5/31/2015" do
    semester = Semester.new() 
    expect(semester.indigit).to eq "201502"
  end 
  
  it "should be 201005 when set with 6/17/2010" do
    semester = Semester.new(Time.new("2010","6"))
    expect(semester.indigit).to eq "201005"
  end
  
  it "should have five elements in array when asked for five past semesters" do
    semester = Semester.new(Time.new("2013","1"))
    expect(semester.past_semesters_inalpha(5).length).to eq 5
  end 
  
  it "should have Summer 2011 as last element when asked for five past semesters from Spring 2013" do
    semester = Semester.new(Time.new("2013","1"))
    expect(semester.past_semesters_indigit(5).last).to eq "Summer 2011"
  end
end