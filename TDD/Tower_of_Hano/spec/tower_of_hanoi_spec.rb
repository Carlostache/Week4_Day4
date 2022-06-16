require_relative "../lib/tower_of_hanoi.rb"

describe TowerOfHanoi do
  subject(:tower) { TowerOfHanoi.new }
  let (:tower2) { TowerOfHanoi.new }
  describe "#initialize" do
    it "initialize should not raise an error" do
      expect { TowerOfHanoi.new}.to_not raise_error
    end
    it "chould set @board as an instance variable of TowerOfHanoi with three empty arrays" do
      expect(tower.board).to eq([[], [], []])
    end
    it "should have each array distince in memory" do
      expect(tower.board[0]).to_not be(tower.board[1])
    end
  end

  describe "#populate" do
    it "should populate the firt array with four discs largest to smallest" do
      expect(tower.populate).to eq([1,2,3,4])
    end
  end

  describe "#move" do
    it "accepts two arguments, representing the indices of the start and end arrays" do
      expect { tower.move(0, 1) }.to_not raise_error
    end

    context "if the disc is placed on an empty pile or on a larger disc"
      it "move the last(top) element of starting pile to top of target pile" do
        tower2.populate
        tower2.move(0,2)
        expect(tower2.board[2]).to eq([4])
        expect(tower2.board[0]).to eq([1, 2, 3])
      end 
    end

    context "if the disc is placed on a smaller disc" do
      it "should raise an invalid move error" do
        tower2.populate
        tower2.move(0,2)
        expect { tower2.move(0,2) }.to raise_error
      end
    end


  end
end
    


