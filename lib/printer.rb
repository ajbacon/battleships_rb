class Printer


  def render_grid(grid)
    puts "   A  B  C  D  E  F  G  H  I  J"
    grid.get_grid.each_with_index do |row, index|
      puts "#{(index+1).to_s.ljust(3)}#{row.join("  ")}"
    end
  end

  def render_instructions
    puts "You will now enter the positions of your ships."
    puts
    puts "You will be Prompted for the starting coordinate (eg 'C3') of the ship,"
    puts "type the coordinate and press [enter]."
    puts
    puts "You will then enter the direction you wish to place the ship:"
    puts "[H]orizontal or [V]ertical."
    puts
    puts "Horizontal will be rendered left to right from the starting position.\n"
    puts "Vertical will be rendered top to bottom from the starting position."
    puts
    puts "Rules:"
    puts "  - Ships cannot extend over the grid boundary"
    puts "  - Ships cannot overlap"
    puts "  - Ships can be adjacent to each other"
    puts "  - Ships cannot be placed diagonally"
    puts
    puts "Press [enter] to continue..."
  end
end