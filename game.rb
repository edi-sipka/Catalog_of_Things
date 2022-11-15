require_relative 'item'
require_relative 'author'

class Game < Item
  attr_reader :multiplayer, :last_played, :author, :publish_date

  def initialize(multiplayer:, last_played:, author:, publish_date:)
    super(publish_date: publish_date)
    @multiplayer = multiplayer
    @last_played = last_played
    @author = author
  end
end

