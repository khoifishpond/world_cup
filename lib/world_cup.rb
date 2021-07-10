class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams  # array of two teams
  end

  def active_players_by_position(position)
    @teams.filter_map do |team|
      team.players_by_position(position) if team.eliminated? == false     
    end.flatten
  end
end