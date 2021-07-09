require 'rspec'
require './lib/player'

describe Player do
  player = Player.new({name: "Luka Modric", position: "midfielder"})
  
  it 'exists' do
    expect(player).to be_a(Player)
  end
end