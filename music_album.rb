require_relative 'genre'
require_relative 'item'
require 'json'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && on_spotify == true
  end
end
