def file_transfer
  files = Dir["/users/jason/pictures/*.jpg"]
  Dir.chdir "/users/jason/documents"
  files_transferred = 0

  puts "Beginning file transfer..."

  if files.size == 0
    puts "There are no files to transfer!"
    puts "Logging off..."
  else
    files.each_with_index do |f, i|
      if File.exists? "new_file#{i + 1}.jpg"
        puts "x..new_file#{i + 1}.jpg already exists, skipping!"
        next
      end
      File.rename f, "new_file#{i + 1}.jpg"
      puts "...#{f} successfully transfered!"
      files_transferred += 1
    end

    puts "Process complete!"
    puts "#{files_transferred} files successfully transfered."
    puts "Logging off..."
  end

end

file_transfer
