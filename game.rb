class Game < Item
  def initialize(multiplayer, last_played)
    super()
    @multiplayer = multiplayer
    @last_played = last_played
  end 
end