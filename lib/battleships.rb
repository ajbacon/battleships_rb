class Battleships

  attr_reader :player1

  def initialize(grid_printer = GridPrinter.new, grid = Grid.new)
    @grid_printer = grid_printer
    @grid = grid
  end

  def start
    @grid_printer.render_grid(@grid)
  end

end