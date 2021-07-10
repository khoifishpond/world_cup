class Player
  attr_reader :name, :position#, :hash

  def initialize(hash)
    # @hash = hash  # is this necessary?
    @name = hash[:name]
    @position = hash[:position]
  end
end