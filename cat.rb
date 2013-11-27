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

if ARGV.first == "-" || ARGV.empty?
  while true
    input = $stdin.gets
    puts input
  end
else
  cat(ARGV)
end
