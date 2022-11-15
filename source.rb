require_relative "item"

class Source < Item
  def initialize(name)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.source = self
end
end