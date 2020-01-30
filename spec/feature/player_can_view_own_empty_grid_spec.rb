
describe "player can place a ship" do
  
  it "should show an empty grid for player 1" do
    game = Game.new
    game.start_game
  
    expectation = 10.times {'- - - - - - - - - -\n'}
    expect { game.player1.show_grid }.to output(expectation)
  end
end
