require_relative 'spec_helper'

describe Genre do
  before :each do
    @genre = Genre.new('Classic')
    @item = Item.new('05-05-2005')
    @genre.add_item(@item)
  end

  it 'Initialize instance of the Label Class' do
    expect(@genre).to be_instance_of Genre
  end

  it 'Is it adding the title' do
    expect(@genre.name).to eql('Classic')
  end

  it 'Self attribute for label on add item method' do
    genre = @item.genre
    expect(genre).to eq @genre
  end
end
