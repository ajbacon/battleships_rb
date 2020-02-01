require 'battleships'

describe "player can place a ship" do
  
  xit "should show an empty grid for player 1" do
    game = Battleships.new
    game.start
  
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

    expect { game.show_grid }.to output(expectation).to_stdout
  end
end
