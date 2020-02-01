class PrintGrid

  def initialize(grid)
    @grid = grid
  end

  def render 
    puts "   A  B  C  D  E  F  G  H  I  J"
    @grid.get_grid.each_with_index do |row, index|
      puts "#{(index+1).to_s.ljust(3)}#{row.join("  ")}"
    end
  end
end