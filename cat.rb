def cat(files)
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

cat(ARGV)
