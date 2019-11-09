class KnicksTape::CLI

  def call
    Scraper.list_all_games
#    Games.all
    puts "Welcome to the KnicksTape!!"
    start
  end

  def start
    puts "As an avid fan of the NY Knicks, I'm sure you can't wait to get an opportunity to watch your favorite team play"

    puts "It's a long season and hopefully your availability matches one of the team's games."

    puts "Would you like to search for a game by date, location, or by opponent?"
    input = gets.strip.downcase

    if input == "date"
      puts "Which date are you looking to attend? Please use (Month day) format"
      input = gets.strip


    elsif input == "location"
      puts "At which venue are you hoping to watch the Knicks play?"
      input = gets.strip

    elsif input == "opponent"
      puts "Who would you like to see the knicks defeat? ;-)"
      opponent = gets.strip

      print_by_opponent(opponent)


    end

  end


  def print_by_date(date)
    puts "The Knicks will be playing #{opponent} on #{date} at #{location}"
  end

  def print_by_location(location)
    puts "The Knicks will be playing #{opponent} on #{date} at #{location}."

  end

  def print_by_opponent(opponent)
    chosen = Games.find_by_opponent(opponent)
    puts "The Knicks will be playing #{opponent}."
#    puts "Ok"
  end





end
