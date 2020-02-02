require 'ship_locator'

RSpec.describe ShipLocator do

  describe "#place_ships" do

    describe "place first ship" do

      let(:grid) { double :grid }
      let(:printer) { double :printer}
      let(:input) { double :input }
      subject { ShipLocator.new input }

      before(:each) do
        allow(grid).to receive(:add_ship)
        allow(printer).to receive(:add_ship)
        allow(input).to receive(:gets).and_return('A1', 'H')
      end


      it "should prompt the user for the ship start location" do
        expected = "Please enter starting coordinate of the ship: "
        expect { subject.place_ships(grid) }.to output(/#{Regexp.quote(expected)}/).to_stdout
      end

      it "should prompt the user for the ship orientation" do
        expected = "Please enter the orientation of the ship: "
        expect { subject.place_ships(grid) }.to output(/#{Regexp.quote(expected)}/).to_stdout
      end

      it "should add the ship to the grid" do
        expect(grid).to receive(:add_ship).with({ size: 3, position: "A1", orientation: "H" })

        subject.place_ships(grid)
      end
    end
  end
end