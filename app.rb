require './book'
require './music_album'
require './game'
require './author'
require './label'
require './genre'
require 'json'

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
    puts 'Add publisher:'
    publisher = gets.chomp
    puts 'Add cover state (Good or bad):'
    cover_state = gets.chomp
    puts 'Add publish date:'
    publish_date = gets.chomp
    book = Book.new(publisher, cover_state, publish_date)
    add_label(book)
    puts 'Book created successfully'
    store_book(book)
  end

  def store_book(book)
    obj = {
      id: book.id,
      publisher: book.publisher,
      archived: book.archived,
      label: book.label,
      cover_state: book.cover_state,
      publish_date: book.publish_date
    }

    stored_book = File.size('./books.json').zero? ? [] : JSON.parse(File.read('./books.json'))
    stored_book << obj
    File.write('books.json', stored_book.to_json)
  end

  def add_label(item)
    puts 'Add title'
    title = gets.chomp
    puts 'Add color'
    color = gets.chomp
    label = Label.new(title, color)
    label.add_item(item)
    puts 'Label created successfully'
    store_label(label)
  end

  def store_label(label)
    obj = {
      id: label.id,
      title: label.title,
      color: label.color
    }

    stored_label = File.size('./labels.json').zero? ? [] : JSON.parse(File.read('./labels.json'))
    stored_label << obj
    File.write('labels.json', stored_label.to_json)
  end

  def add_game
    puts 'add your game'
  end

  def list_all_books
    books = File.size('./books.json').zero? ? [] : JSON.parse(File.read('./books.json'))
    books.each do |book|
      puts "Publisher: #{book['publisher']}, Cover State: #{book['cover_state']}, Publish Date: #{book['publish_date']}"
    end
  end

  def list_all_games
    puts 'list all games'
  end

  def list_all_music_albums
    music_album = File.size('./music_album.json').zero? ? [] : JSON.parse(File.read('./music_album.json'))
    music_album.each do |music|
      puts "Spotify: #{music['on_spotify']}, Publish Date: #{music['publish_date']}, Genre Name: #{music['name']}"
    end
  end

  def list_all_genre
    genre = File.size('./genre.json').zero? ? [] : JSON.parse(File.read('./genre.json'))
    genre.each do |genres|
      puts "Name: #{genres['name']}"
    end
  end

  def list_all_authors
    puts 'list all authors'
  end

  def list_all_labels
    labels = File.size('./labels.json').zero? ? [] : JSON.parse(File.read('./labels.json'))
    labels.each do |label|
      puts "Title: #{label['title']}, Color: #{label['color']}"
    end
  end

  def add_music_album
    puts 'Add spotify(Yes or No):'
    on_spotify = gets.chomp
    puts 'Add publish date:'
    publish_date = gets.chomp
    music_album = MusicAlbum.new(on_spotify, publish_date)
    add_genre(music_album)
    puts 'Music Album created successfully'
    store_music_album(music_album)
  end

  def store_music_album(music_album)
    obj = {
      id: music_album.id,
      on_spotify: music_album.on_spotify,
      publish_date: music_album.publish_date,
      name: music_album.genre.name
    }

    stored_music_album = File.size('./music_album.json').zero? ? [] : JSON.parse(File.read('./music_album.json'))
    stored_music_album << obj
    File.write('music_album.json', stored_music_album.to_json)
  end

  def add_genre(item)
    puts 'Add Name'
    name = gets.chomp
    genre = Genre.new(name)
    genre.add_item(item)
    puts 'Genre created successfully'
    store_genre(genre)
  end

  def store_genre(genre)
    obj = {
      id: genre.id,
      name: genre.name
    }

    stored_genre = File.size('./genre.json').zero? ? [] : JSON.parse(File.read('./genre.json'))
    stored_genre << obj
    File.write('genre.json', stored_genre.to_json)
  end
end
