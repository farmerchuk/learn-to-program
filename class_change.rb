class String
  def to_gibberish
    return_string = ""
    self.each_char do |c|
      case c
        when "a" then return_string << "e"
        when "e" then return_string << "i"
        when "i" then return_string << "o"
        when "o" then return_string << "u"
        when "u" then return_string << "a"
      end
    end
    return_string
  end
end

puts "jason".to_gibberish
puts "chris".to_gibberish
puts "louise".to_gibberish
