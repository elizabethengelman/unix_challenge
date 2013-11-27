#!/usr/bin/env ruby

def cat(files)
  # puts "ARGV: #{ARGV.inspect}"
  files.each do |file|

    if File.exist?(file)
      input_file = File.open(file, 'r')
      until input_file.eof
        puts input_file.read(100)
      end
    elsif file == "-"
      standard_input
    else
       abort "This file doesn't exist"
    end
  end
end

def numbered_cat(file)
  if File.exist?(file)
    input_file = File.open(file, 'r')
    file_array = input_file.read.split("\n")
    file_array.each_with_index do |item, index|
      puts "#{index + 1} " + item
    end
  else
     abort "This file doesn't exist"
  end
end

def standard_input 
  while !$stdin.eof?
    input = $stdin.gets
    puts input
  end
end


if ARGV.empty?
 standard_input
elsif ARGV.first == "-n"
  numbered_cat(ARGV[1])
else
  cat(ARGV)
end


