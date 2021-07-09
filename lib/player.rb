class Player
  attr_reader :hash, :name

  def initialize(hash)
    @hash = hash
    @name = @hash[:name]
  end
end