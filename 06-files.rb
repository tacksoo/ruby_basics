# file handling

filename = "yourfile.txt"

if !filename.nil?
  File.open(filename) do |file|
    file.each_line do |line|
      # line is a string, process it here   
    end
  end
end
