require 'print_grid'

RSpec.describe PrintGrid do

  empty_grid = Array.new(10, Array.new(10, "-"))
  let(:grid1) { double :grid, get_grid: empty_grid }

  subject { PrintGrid.new }
  
  describe "render" do
    it "should print the current grid to STDOUT" do

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
    
      expect{ subject.render_grid(grid1) }.to output(expected).to_stdout
    end
  end
end