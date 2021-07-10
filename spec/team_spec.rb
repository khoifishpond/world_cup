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

    it 'starts with no players' do
      expect(team.players).to eq([])
    end

    it 'can add players' do
      expect(team.players).to eq([])

      team.add_player(mbappe)

      expect(team.players).to eq([mbappe])

      team.add_player(pogba)

      expect(team.players).to eq([mbappe, pogba])
    end

    it 'can find players by their position' do
      expect(team.players_by_position("midfielder")).to eq([pogba])
      expect(team.players_by_position("defender")).to eq([])
    end
  end
end