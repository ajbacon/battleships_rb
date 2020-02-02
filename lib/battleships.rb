require_relative 'printer'
require_relative 'grid'

class Battleships

  attr_reader :player1

  def initialize(printer = Printer.new, grid = Grid.new)
    @printer = printer
    @grid = grid
  end

  def start(input = $stdin)
    @printer.render_grid(@grid)
    @printer.render_instructions
  end
end
