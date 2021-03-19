class Player
  attr_reader :name, :icon
  attr_accessor :square

  def initialize(name, icon)
    @name = name
    @icon = icon
    @square = []
  end
end
