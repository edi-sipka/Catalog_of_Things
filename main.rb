require './app'

puts 'Welcome to the catalog app'

class Main
  def select_option
    puts 'Please choose an option by entering a number:'
    puts '1  - List all books'
    puts '2  - List all music albums'
    puts '3  - List all games'
    puts '4  - List all genres'
    puts '5  - List all labels'
    puts '6  - List all authors'
    puts '7  - Add a book'
    puts '8  - Add a music album'
    puts '9  - Add a game'
    puts '10 - exit'
  end

  def start
    new_app = App.new
    loop do
      select_option
      option = gets.chomp
      break if option == '10'

      new_app.select_option(option)
      new_app.extra_option(option)
    end
  end
end

def main
  app = Main.new
  app.start
  return if File.exist?('./games.json')

  File.write('./games.json3', [])
  File.write('./author.json', [])
end
main
