require 'rspec'
require './lib/player'

describe Player do
  player = Player.new({name: "Luka Modric", position: "midfielder"})
  
  it 'exists' do
    expect(player).to be_a(Player)
  end

  it 'has a name' do
    expect(player.name).to eq("Luka Modric")
  end
end