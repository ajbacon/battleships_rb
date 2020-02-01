require 'battleships'

RSpec.describe Battleships do

  let(:grid) { double :grid }
  let(:grid_printer) { double :grid_printer}

  subject { Battleships.new grid_printer, grid }

  describe "#start" do
    it "should print an empty board for human player" do
      expect(grid_printer).to receive(:render_grid).with(grid)

      subject.start
    end
  end
end