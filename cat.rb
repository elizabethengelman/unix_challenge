def cat(files)
  files.each do |file|
    input_file = File.open(file, 'r')
    opened_file = input_file.read
    puts opened_file
  end
end

cat(ARGV)
