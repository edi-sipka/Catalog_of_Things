require_relative 'spec_helper'

describe Author do
  before :all do
    @author = Author.new('Betsegaw', 'Sebsibe')
    @item = Item.new('05-05-2005')
    @author.add_item(@item)
  end

  context 'Check the instance' do
    it 'check author instance' do
      expect(@author).to be_instance_of Author
    end
  end

  context 'Check for first name' do
    it 'Retrive the first name' do
      expected_value = 'Betsegaw'
      expect(@author.first_name).to eq(expected_value)
    end
  end

  it 'Self attribute for author on add item method' do
    author = @item.author
    expect(author).to eq @author
  end
end
