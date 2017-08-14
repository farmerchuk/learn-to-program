def birthday_helper
  Dir.chdir "/users/jason/documents"
  file = File.read "birthdays.txt"
  birthdays_as_hash = Hash.new
  name = get_name

  file.each_line do |line|
    record_as_array = line.split(",")
    birthdays_as_hash[record_as_array[0]] = record_as_array[1].chomp
  end

  if birthdays_as_hash.has_key? name
    puts "That person's birthday is: #{birthdays_as_hash[name]}"
  else
    puts "Sorry, there is no one by that name in the database."
  end
end

def get_name
  print "Whose birthday do you need? "
  name = gets.chomp
  if name.size == 0
    puts "Please enter a name with at least one character!"
    get_name
  end
  name
end

birthday_helper
