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

    else
      p 'Thanks for using this app, See you again'
      exit
    end
  end
end
