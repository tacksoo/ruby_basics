desc "say hello to user"
task :hello do
  puts "Hello User!"
end

task :force

desc "create README.md"
file 'README.md' => :force do
  sh "echo 'first line' >> README.md"
end

desc "check weather"
task :w do
  zipcode = ENV['ZIPCODE'] || 30043
  sh "weather #{zipcode}"
end

desc "make backup for project"
task :backup do
  sh "tar zcvf backup.tar.gz *" 
end

task :default => [ :w, 'README.md' ]
