require 'battleships'

RSpec.describe Battleships do

  let(:grid) { double :grid }
  let(:printer) { double :printer}
  let(:ship_locator) { double :ship_locator }
  

  subject { Battleships.new printer, grid }

  describe "#start" do

    before(:each) do
      allow($stdin).to receive(:gets).and_return('\n')
      allow(printer).to receive(:render_grid)
      allow(printer).to receive(:render_instructions)
      allow(ship_locator).to receive(:place_ships)
    end

    it "should print an empty board for human player" do
      expect(printer).to receive(:render_grid).with(grid)

      subject.start($stdin, ship_locator)
    end

    it "should call the printer method printing placing ship instructions" do
      expect(printer).to receive(:render_instructions)

      subject.start($stdin, ship_locator)
    end

    it "should call method to begin placing ships" do
      expect( ship_locator ).to receive(:place_ships).with(grid)

      subject.start($stdin, ship_locator)
    end
  end
end