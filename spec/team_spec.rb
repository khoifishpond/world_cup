require 'rspec'
require './lib/team'
require './lib/player'

describe Team do
  context do
    team = Team.new("France")

    it 'exists' do
      expect(team.country).to eq("France")
    end
  end
end