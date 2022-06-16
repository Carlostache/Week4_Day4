require_relative "../lib/my_transpose.rb"

describe "#my_transpose" do

let(:matrix1) { [[0,1,2], [3,4,5], [6,7,8]] }

  it "accepts a 2-D Array as an argument"  do
    expect {my_transpose(matrix1)}.to_not raise_error
  end

  it "returns an array where the columns values are in their own array" do
    expect(my_transpose(matrix1)).to eq(matrix1.transpose)
  end
end