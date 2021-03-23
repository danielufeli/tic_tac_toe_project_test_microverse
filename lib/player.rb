class Player
  attr_accessor :name, :icon, :square

  def initialize(name, icon)
    @name = name
    @icon = icon
    @square = []
  end
end
