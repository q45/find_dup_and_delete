require 'find'

files = {} 
found = {}

#read root directory from command line
count = 0
ARGV.each do |arg|
	Find.find(arg) do |f|
		if File.file?(f)
			files[f] = File.basename(f)
			#puts File.mtime(f) 
			puts "#{files[f].slice(0..23)} #{File.mtime(f)}"
		end
	end
end
