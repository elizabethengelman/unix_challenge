def cat(files)
  puts "ARGV: #{ARGV.inspect}"
  files.each do |file|

    if File.exist?(file)
      input_file = File.open(file, 'r')
      until input_file.eof
        puts input_file.read(100)
      end
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

if ARGV.first == "-" || ARGV.empty?
  while true
    input = $stdin.gets
    puts input
  end
elsif ARGV.first == "-n"
  numbered_cat(ARGV[1])
else
  cat(ARGV)
end
