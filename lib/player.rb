class Player
  attr_reader :hash, :name, :position

  def initialize(hash)
    @hash = hash
    @name = @hash[:name]
    @position = @hash[:position]
  end
end