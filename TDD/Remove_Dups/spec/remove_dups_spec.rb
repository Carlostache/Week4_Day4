require_relative "../lib/remove_dups.rb"

describe "#my_unique" do

  subject(:array) { [1,2,3,2] }

  it "accepts an Array as an argument" do
    expect { my_unique(array)}.to_not raise_error
  end

  it "raises an error if argument is not an Array" do
    expect { my_unique("hello")}.to raise_error(ArgumentError)
  end

  it "returns an array with no duplicate elements" do
    expect(my_unique([1,2,3,2])).to eq([1,2,3])
  end

  it "does not modify the original arrray" do
    expect(my_unique(array)).to_not be(array)
  end

end