require_relative "../lib/stock_picker.rb"

describe "#stock_picker" do
  let(:stock) { [34, 71, 53, 21, 45] }

  it "accepts an array of stock prices" do
    expect { stock_picker(stock) }.to_not raise_error
  end

  it "returns a dup array of the indices of buy day and sell day" do
    expect(stock_picker(stock)).to eq([0, 1])
  end

end