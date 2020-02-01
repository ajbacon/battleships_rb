require 'grid'

RSpec.describe Grid do

  it "should create an empty grid when intialised" do

    expectation = []
    10.times { expectation.push(["-", "-", "-", "-", "-", "-", "-", "-", "-", "-"]) }

    expect(subject.grid).to eq(expectation)
  end
end