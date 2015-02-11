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
  
  it "should be Spring 2015 when run on 2/11/2015" do
    semester = Semester.new() 
    expect(semester.inalpha).to eq "Spring 2015"
  end 
  
  it "should be 201502 when run on 2/11/2015" do
    semester = Semester.new() 
    expect(semester.indigit).to eq "201502"
  end 
  
  it "should be 201005 when set with 6/17/2010" do
    semester = Semester.new()
    expect(semester.inalpha).to eq "201006"
  end
end