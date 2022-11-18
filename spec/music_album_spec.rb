require_relative 'spec_helper'

describe MusicAlbum do
  before :each do
    @music = MusicAlbum.new('Yes', '21-02-2022')
  end

  it 'Initialize instance of the MusicAlbum Class' do
    expect(@music).to be_instance_of MusicAlbum
  end

  it 'Is it adding the on_spotify' do
    expect(@music.on_spotify).to eql('Yes')
  end

  it 'Is it adding the date' do
    expect(@music.publish_date).to eql('21-02-2022')
  end
end
