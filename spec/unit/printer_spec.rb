require 'printer'

RSpec.describe Printer do

  empty_grid = Array.new(10, Array.new(10, "-"))
  let(:grid1) { double :grid, get_grid: empty_grid }

  subject { Printer.new }
  
  describe "render_grid" do
    it "should print the current grid to STDOUT" do

      expected = "   A  B  C  D  E  F  G  H  I  J\n"
      expected += "1  -  -  -  -  -  -  -  -  -  -\n"
      expected += "2  -  -  -  -  -  -  -  -  -  -\n"
      expected += "3  -  -  -  -  -  -  -  -  -  -\n"
      expected += "4  -  -  -  -  -  -  -  -  -  -\n"
      expected += "5  -  -  -  -  -  -  -  -  -  -\n"
      expected += "6  -  -  -  -  -  -  -  -  -  -\n"
      expected += "7  -  -  -  -  -  -  -  -  -  -\n"
      expected += "8  -  -  -  -  -  -  -  -  -  -\n"
      expected += "9  -  -  -  -  -  -  -  -  -  -\n"
      expected += "10 -  -  -  -  -  -  -  -  -  -\n"
    
      expect{ subject.render_grid(grid1) }.to output(expected).to_stdout
    end
  end

  describe "render_instructions" do
    it "should print the instructions to STDOUT" do

      expected = "You will now enter the positions of your ships.\n\n"
      expected += "You will be Prompted for the starting coordinate (eg 'C3') of the ship,\n"
      expected += "type the coordinate and press [enter].\n\n"
      expected += "You will then enter the direction you wish to place the ship:\n"
      expected += "[H]orizontal or [V]ertical.\n\n"
      expected += "Horizontal will be rendered left to right from the starting position.\n"
      expected += "Vertical will be rendered top to bottom from the starting position.\n\n"
      expected += "Rules:\n"
      expected += "  - Ships cannot extend over the grid boundary\n"
      expected += "  - Ships cannot overlap\n"
      expected += "  - Ships can be adjacent to each other\n"
      expected += "  - Ships cannot be placed diagonally\n\n"
  
      expect{ subject.render_instructions }.to output(/#{Regexp.quote(expected)}/).to_stdout
    end
  end

  describe "render_instructions" do
    it "should prompt the player to hit enter to continue" do

      expected = "Press [enter] to continue...\n"
      expect{ subject.render_instructions }.to output(/#{Regexp.quote(expected)}/).to_stdout
    end
  end
end