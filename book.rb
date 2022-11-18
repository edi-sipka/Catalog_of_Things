require_relative 'item'
require 'json'

class Book < Item
  attr_reader :publisher, :cover_state, :publish_date

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || cover_state == 'bad'
  end
end
