require './app'

puts 'Welcome to the catalog app'

class Main
    def select_option
        puts 'Please choose an option by entering a number:'
        puts   '1  - List all books'
        puts  '2  - List all music albums'
        puts   '3  - List all games'
        puts  '4  - List all genres'
        puts  '5  - List all labels'
        puts  '6  - List all authors'
        puts  '7  - Add a book'
        puts  '8  - Add a music album'
        puts  '9  - Add a game'
        puts '10 - exit'
    end

    def start
        new_app = App.new
        loop do
            select_option
            option = gets.chomp
            break if option == '10'
            new_app.select_option(option)
        end 
    end
end
def main 
    app = Main.new
    app.start
end
main



#   include Request
#   def start
#     [ 'Please choose an option by entering a number:'
#       '1  - List all books'
#       '2  - List all music albums'
#       '3  - List all games'
#       '4  - List all genres'
#       '5  - List all labels'
#       '6  - List all authors'
#       '7  - Add a book'
#       '8  - Add a music album'
#       '9  - Add a game'
#       '10 - Add a genres'
#       '11 - Add a label'
#       '14 - Quit App'].each do |opt|
#       puts opt
#     end
#     req = gets.chomp
#     request(req)
#   end
# end

# obj = Main.new
# obj.start
