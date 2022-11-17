require_relative 'item'

class Game < Item
  attr_reader :multiplayer, :last_played, :author, :publish_date

  def initialize(multiplayer, last_played, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played = last_played
  end

  def can_be_archived?
    true if super && (Date.today.to_time.year - @last_played.year) > 2
  end
end
