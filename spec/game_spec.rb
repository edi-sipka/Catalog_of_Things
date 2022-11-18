require 'date'
require_relative 'spec_helper'

describe Game do
  before :each do
    @game = Game.new(true, '1999-12-12', '1999-12-12')
  end
  context 'Create instance of game' do
    it 'take all parameters' do
      expect(@game).to be_instance_of Game
    end
  end

  context 'Check game multiplayer' do
    it 'game multiplayer' do
      expect(@game.multiplayer).to eq(true)
    end
  end
end
