class BabyDragon
  def initialize(name)
    @name = name
    @full = 1
    @tired = 1
    @dead = false
  end

  def name
    @name
  end

  def walk
    @tired += 1
  end

  def feed
    @full += 1
  end

  def is_dead?
    true if @full >= 5 || @tired >= 5
  end
end

def run
  print "What is your new baby dragon's name? "
  name = gets.chomp
  puts "Congratulations on your new baby dragon, #{name}!"

  dragon = BabyDragon.new(name)
  continue = true

  #game
  menu_selection(dragon)

  print "Sorry, #{dragon.name} is dead. Would you like to play again? (Y/N): "
  user_choice = gets.chomp
  if user_choice != "N"
    run
  else
    puts "Thanks for playing!"
  end

end

def menu_selection(dragon)
  puts "With your baby dragon you can feed it (F) or walk it (W)."
  print "What would you like to do? "
  user_choice = gets.chomp
  if user_choice == "F"
    dragon.feed
    menu_selection(dragon) unless dragon.is_dead?
  elsif user_choice == "W"
    dragon.walk
    menu_selection(dragon) unless dragon.is_dead?
  else
    puts "Sorry, that's not a valid choice!"
  end
end

run
