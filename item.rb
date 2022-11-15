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
end
