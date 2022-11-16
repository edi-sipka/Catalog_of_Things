class Item
  attr_accessor :publish_date
  attr_reader :id, :archived, :genre, :author, :label
  def initialize(publish_date)
    @id = Random.rand(1..1000)
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

  def add_label(label)
    label.extra_option << self unless label.items.include?self
    @label = label
  end
  def add_author(author)
    author.extra_option << self unless author.items.include?self
    @author = author
  end
end
