require 'rspec'
require './lib/team'
require './lib/player'

describe Team do
  team = Team.new("France")

  it 'exists' do
    expect(team).to be_a(Team)
  end

  it 'has a country' do
    expect(team.country).to eq("France")
  end

  it 'is not eliminated by default' do
    expect(team.eliminated?).to eq(false)
  end
end