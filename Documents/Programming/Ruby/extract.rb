#This is a small Ruby script that can be used to extract or compress an archive
#It can be used in the command line by appending the flags listed below (i.e. extract.rb --extract test.tar)
#When compressing a file you need three arguments, --type TYPE --name NAME --compress FILENAME
#I recommend setting an alias to this .rb file in your .bashrc so it can be run without much hassle

require 'optparse'

options = {}
OptionParser.new do |opt|
  opt.on('--extract FILENAME', '-e FILENAME') { |o| options[:filename], options[:cmd] = o, "ext" }
  opt.on('--compress FILENAME', '-c FILENAME') { |o| options[:filename], options[:cmd] = o, "cps" }
  opt.on('--type TYPE', '-t TYPE') { |o| options[:type_compress] = o }
  opt.on('--name NAME', "-n NAME") { |o| options[:name_save] = o }
  opt.on('--help', '-h') { puts "#{opt}\n To compress a file, you need three arguments: --type TYPE (the type of archive you want to create, i.e. tar) --name NAME (the name the archive should have) --compress FILENAME (the files or directory toc ompress" }
end.parse!

if filetype != nil then filetype = options[:filename].partition(".").last end

case options[:cmd]
when "ext"
	case filetype
		when "tar" || "tar.gz"
			system("tar -xfv #{options[:filename]}")
		when "zip"
			system("unzip #{options[:filename]}")
	end 
when "cps"
	case options[:type_compressed]
		when "tar" || "tar.gz"
			system("tar -zcvf #{options[:name_save]}.tar.gz #{options[:filename]}")
			puts "test"
	end
end

puts options[:filename]
puts options[:cmd]
