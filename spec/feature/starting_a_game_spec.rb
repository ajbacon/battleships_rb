require 'battleships'
require 'printer'
require 'grid'
require 'ship_locator'

describe "empty grid is displayed on new games spec" do

  let(:ship_locator) { double :ship_locator, place_ships: nil}
  
  it "should show an empty grid when game is started" do
    game = Battleships.new

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

    expect { game.start($stdin, ship_locator) }.to output(/#{Regexp.quote(expected)}/).to_stdout
  end

  it "should print the instructions for placing ships" do
    game = Battleships.new
    
  
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
    expected += "  - Ships cannot be placed diagonally\n"

    expect { game.start($stdin, ship_locator) }.to output(/#{Regexp.quote(expected)}/).to_stdout
  end

  it "should prompt the user to press enter to continue" do
    game = Battleships.new
    
    expected = "Press [enter] to continue...\n"

    expect { game.start($stdin, ship_locator) }.to output(/#{Regexp.quote(expected)}/).to_stdout
  end

  # prompt the user for ship coordinates of the ship location

end
