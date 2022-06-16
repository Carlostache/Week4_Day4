require_relative "../lib/two_sum.rb"

describe Array do

    subject(:array) { [-1, 0, 2, -2, 1] }
    let(:array2) { [0, 5, 8, 9, 3, 4] }

  describe "#two_sum" do
    context "when no pairs sum to zero" do
      it "returns an empty array" do
        expect(array2.two_sum).to eq([])
      end
    end

    context "when at least on pair sums to zero"
      it "returns all pairs of indices that sum to zero" do
        expect(array.two_sum).to eq([[0, 4], [2, 3]])
      end
      it "return the pairs in the order they appear in the array" do
        expect(array.two_sum).to eq([[0,4], [2,3]])
      end
    end

end