require_relative 'genre'
require_relative 'item'

class MusicAlbum < Item
  attr_reader :on_spotify, :publish_date, :genre

  def initialize(on_spotify:, publish_date:, genre:)
    super(publish_date: publish_date)
    @on_spotify = on_spotify
    @published_date = published_date
    @genre = genre
  end
end
