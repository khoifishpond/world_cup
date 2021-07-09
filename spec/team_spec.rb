require 'rspec'
require './lib/team'
require './lib/player'

describe Team do
  team = Team.new("France")

  context 'Attributes' do
    it 'exists' do
      expect(team).to be_a(Team)
    end

    it 'has a country' do
      expect(team.country).to eq("France")
    end

    it 'is not eliminated' do
      expect(team.eliminated?).to eq(false)
    end

    it 'can be eliminated' do
      team.eliminated

      expect(team.eliminated?).to eq(true)
    end
  end

  context 'Players' do
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    it 'exists' do
      expect(mbappe).to be_a(Player)
      expect(pogba).to be_a(Player)
    end
  end
end