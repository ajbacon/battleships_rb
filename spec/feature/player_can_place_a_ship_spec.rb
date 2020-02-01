require 'battleships'
require 'printer'
require 'grid'

describe "player can place a ship" do

  let(:game) {Battleships.new}

  # it "should prompt the user to enter a menu selection when the game is started" do

  #   expected = "Please select an option from the menu: "

  #   expect{ game.start }.to output(/#{Regexp.quote(expected)}/).to_stdout

  # end
  
  # it "should show a horizontal ship of length 3 from A1 to C1 rendered on the board" do
  #   game = Battleships.new
  #   game.start
  #   game.choose_position("A1")
  #  stringIO.new("andrew\n")
    
  
  #   expected = "   A  B  C  D  E  F  G  H  I  J\n"
  #   expected += "1  S  S  S  -  -  -  -  -  -  -\n"
  #   expected += "2  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "3  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "4  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "5  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "6  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "7  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "8  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "9  -  -  -  -  -  -  -  -  -  -\n"
  #   expected += "10 -  -  -  -  -  -  -  -  -  -\n"

  #   expect { game.add_ship("A1H") }.to output(expected).to_stdout
  # end
end