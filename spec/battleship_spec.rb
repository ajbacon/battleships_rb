require 'battleships'

describe Battleships do

  let(:player1) { double :player1 }
  
  describe "#start" do

    it "should print an empty board for human player" do
      allow(player1).to receive(:show_grid).and_return(10.times {'- - - - - - - - - -\n'})
      game = Battleships.new(player1)
      expect(game.player1.show_grid)
    end

  end
end
