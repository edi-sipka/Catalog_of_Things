require 'date'

class Item
  def initialize(genre, author, source, label, publish_date)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = true
  end

  def can_be_archived?
    published_year = Date.strptime(@published_date, '%d-%m-%Y').strftime('%Y')
    Time.now.year - published_year.to_i > 10
  end

  private :can_be_archived?

  def move_to_archived?
    can_be_archived? == true
  end
end
