class ShipLocator

  def initialize(input = $stdin)
    @input = input
  end

  def place_ships(grid)
    new_ship = get_ship_data
    grid.add_ship(new_ship)
  end

  private

  def get_ship_data
    size = 3
    position = get_position
    orientation = get_orientation
    { size: size, position: position, orientation: orientation }
  end

  def get_position
    puts "Please enter starting coordinate of the ship: "
    position = @input.gets.chomp
  end

  def get_orientation
    puts "Please enter the orientation of the ship: "
    orientation = @input.gets.chomp
  end
end

