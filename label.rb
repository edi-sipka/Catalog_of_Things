class Label
  attr_reader :id
  attr_accessor :title, :color, :items

  def initialize(title:, color:)
    super()
    @id = Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.label = self
    @items << item
  end
end
