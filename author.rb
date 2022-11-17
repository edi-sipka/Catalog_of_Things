class Author
  # attr_accessor
  attr_reader :id, :first_name, :last_name, :items

  def initialize(first_name, last_name)
    @id = Random.rand(0..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    puts 'welcome to add item'
    @items << item
    item.add_author(self)
  end
end
