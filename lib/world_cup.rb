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

  def all_players_by_position
    players_array = @teams.flat_map do |team|
      team.players
    end

    active_players_by_position = Hash.new

    players_array.each do |player|
      active_players_by_position[player.position] ||= []
      active_players_by_position[player.position] << player
    end
    active_players_by_position
  end
end