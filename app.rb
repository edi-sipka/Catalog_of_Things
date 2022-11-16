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
        puts "Add publish date:"
        publish_date = gets.chomp
        book = Book.new(publisher, cover_state,  publish_date)
        add_label(book)
        puts 'Book created successfully'
        store_book(book)
  end

  def store_book(book)
    obj = {
        id:book.id,
        publisher: book.publisher,
        archived: book.archived,
        label: book.label,
        cover_state: book.cover_state,
        publish_date:book.publish_date
    }

    stored_book = File.size("./books.json").zero? ? [] : JSON.parse(File.read("./books.json")) 
    stored_book << obj
    File.write("books.json", stored_book.to_json)
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

def add_author(item)
    puts 'Enter first name'
    first_name = gets.chomp
    puts 'Enter last name'
    last_name = gets.chomp
    new_author = Author.new(first_name, last_name)
    puts 'now going to authors.rb'
    new_author.add_item(item)
    puts 'author created successfully'
    store_author(new_author)
end

def store_label(label)
    obj = {
        id:label.id,
        title: label.title,
        color: label.color
    }

    stored_label = File.size("./labels.json").zero? ?  [] : JSON.parse(File.read("./labels.json")) 
    stored_label << obj
    File.write("labels.json", stored_label.to_json)
end


def add_game
    print 'Is it multiplayer [Y / N]'
    multiplayer = gets.chomp.downcase == 'y'
    print 'Last played date, use  (YYYY-MM-DD) format: '
    last_played_at_date = gets.chomp
    print 'publish_date use  (YYYY-MM-DD) format: '
    publish_date = gets.chomp
    new_game = Game.new(multiplayer, last_played_at_date, publish_date)
    add_author(new_game)
    puts 'Game and Author were added successfully!'
    store_game(new_game)
  end

  def store_game(new_game)
    hash = {
      id: new_game.id,
      multiplayer: new_game.multiplayer,
      archived: new_game.archived,
      author_name: new_game.author.first_name,
      last_played: new_game.last_played,
      publish_date: new_game.publish_date
    }

    if File.exist?('./games.json')
        file = File.size('./games.json').zero? ? [] : JSON.parse(File.read('./games.json'))
        file << hash
        File.write('games.json', file.to_json)
      else
        File.write('./games.json3', [])
        File.write('./author.json', [])
      end
  end


  def store_author(new_author)
    hash = {
      id: new_author.id,
      first_name: new_author.first_name,
      last_name: new_author.last_name
    }

    if File.exist?('./author.json')
        file = File.size('./author.json').zero? ? [] : JSON.parse(File.read('./author.json'))
        file << hash
        File.write('author.json', file.to_json)
      else
        File.write('./author.json', [])
      end
  end

  def list_all_games
    games = File.size('./games.json').zero? ? [] : JSON.parse(File.read('./games.json'))
    games.each do |g|
      puts "Multiplayer: #{g['multiplayer']} , Last Played At Date: #{g['last_played']}  , Author: #{g['author_name']} ,"
    end
  end

  def add_music_album
    puts 'add your music album'
  end

  def list_all_books
    books = File.size("./books.json").zero? ? [] : JSON.parse(File.read("./books.json"))
    books.each do |book|
      puts "Publisher: #{book["publisher"]}, Cover State: #{book["cover_state"]}, Publish Date: #{book["publish_date"]}"
    end
  end

  def list_all_music_albums
    puts 'list all music albums'
  end

  def list_all_genre
    puts 'list all genre'
  end

  def list_all_authors
    authors = File.size('./author.json').zero? ? [] : JSON.parse(File.read('./author.json'))
    authors.each do |a|
      puts "First Name: #{a['first_name']} , Last Name: #{a['last_name']}"
    end
  end

  def list_all_labels
    labels = File.size("./labels.json").zero? ? [] : JSON.parse(File.read("./labels.json"))
    labels.each do |label|
      puts "Title: #{label["title"]}, Color: #{label["color"]}"
    end
  end
end
