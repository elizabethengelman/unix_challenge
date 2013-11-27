def cat(files)
  files.each do |file|
    if File.exist?(file)
      input_file = File.open(file, 'r')
      opened_file = input_file.read
      puts opened_file
    else
      # $stderr.write("This file doesn't exist")
       abort "This file doesn't exist"
    end
  end
end

cat(ARGV)
