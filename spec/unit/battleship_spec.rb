require 'battleships'

RSpec.describe Battleships do

  let(:grid) { double :grid }
  let(:printer) { double :printer}

  subject { Battleships.new printer, grid }

  describe "#start" do
    it "should print an empty board for human player" do
      allow(printer).to receive(:render_instructions)
      expect(printer).to receive(:render_grid).with(grid)

      subject.start
    end

    it "should call the printer method printing placing ship instructions" do
      allow(printer).to receive(:render_grid).with(grid)
      expect(printer).to receive(:render_instructions)

      subject.start
    end

    it "should call method to begin placing ships" do
      allow(printer).to receive(:render_grid).with(grid)
      allow(printer).to receive(:render_instructions)
      expect( ship_loctator ).to receive(:place_ships)

      subject.start
    end
  end
end