class WorldCup
  attr_reader :year, :teams
  
  def initialize(year, teams)
    @year = year
    @teams = teams  # array of two teams
  end
end