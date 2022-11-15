require './request'

class Main
  include Request
  def start
    [ 'Please choose an option by entering a number:'
      '1  - List all books'
      '2  - List all music albums'
      '3  - List all games'
      '4  - List all genres'
      '5  - List all labels'
      '6  - List all authors'
      '7  - Add a book'
      '8  - Add a music album'
      '9  - Add a game'
      '10 - Add a genres'
      '11 - Add a label'
      '14 - Quit App'].each do |opt|
      puts opt
    end
    req = gets.chomp
    request(req)
  end
end

obj = Main.new
obj.start
