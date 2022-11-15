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
    publish_year = @publish_date.strftime('%Y')
    true if publish_year > publish_year - 10
  end

  def move_to_archive
    true if can_be_archived? == true
  end
end
