require_relative "item"
require_relative "label"

class Book < Item
attr_reader :publisher, :publish_date, :label, :cover_state

  def initialize(publisher:, cover_state: , publish_date: , label:)
    super(publish_date: publish_date)
    @publisher = publisher
    @cover_state = cover_state
    @label = label
  end

  def can_be_archived? 
    super || @cover_state == "bad"
  end
end
