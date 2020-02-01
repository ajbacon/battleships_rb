require 'battleships'

describe "player can place a ship" do
  
  it "should show an empty grid for player 1" do
    game = Battleships.new
    game.start
  
    expectation = 10.times {'- - - - - - - - - -\n'}
    expect { game.show_grid }.to output(expectation)
  end
end
