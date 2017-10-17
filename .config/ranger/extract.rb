#This is a small Ruby script that can be used to extract an archive

require 'optparse'

options = {}
OptionParser.new do |opt|
  opt.on('--extract FILENAME') { |o| options[:filename] = o }  
end.parse!

if options[:filename].partition(".").last.include?("tar")
	system("tar -xf #{options[:filename]}")
else
    system("unzip #{options[:filename]}")
end
