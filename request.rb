require './app'

module Request
  def initialize
    @inst = App.new
  end

  def request(selection)
    case selection
    when '1'
      @inst.all_books
      start
    when '2'
      @inst.all_people
      start
    when '3'
      @inst.create_person
      start
    when '4'
      book
    when '5'
      @inst.create_rental
      start
    when '6'
      @inst.all_rentals
      start
    else
      p 'Thanks for using this app, See you again'
      exit
    end
  end

  def book
    p 'Enter title: '
    title = gets.chomp
    p 'Enter Author: '
    author = gets.chomp
    @inst.create_book(title, author)
    start
  end
end
