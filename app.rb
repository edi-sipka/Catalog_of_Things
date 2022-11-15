require './book'
require './music_album'
require './game'
require './author'
require './label'
require './genre'
class App
  def select_option(option)
    case option
    when '1'
      list_all_books
    when '2'
      list_all_music_albums
    when '3'
      list_all_games
    when '4'
      list_all_genre
    when '5'
      list_all_labels
    when '6'
      list_all_authors
    end
  end

  def extra_option(option)
    case option
    when '7'
      add_book
    when '8'
      add_music_album
    when '9'
      add_game
    end
  end

  def add_book
    puts 'add your books'
  end

  def add_game
    puts 'add your game'
  end

  def add_music_album
    puts 'add your music album'
  end

  def list_all_books
    puts 'list all books'
  end

  def list_all_games
    puts 'list all games'
  end

  def list_all_music_albums
    puts 'list all music albums'
  end

  def list_all_genre
    puts 'list all genre'
  end

  def list_all_labels
    puts 'list all labels'
  end

  def list_all_authors
    puts 'list all books'
  end
end
