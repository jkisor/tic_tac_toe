class Claim
  class NextShape
    
    def call(board)
      "X"
    end

  end
end


describe Claim::NextShape do
  
  context "board is empty" do
    
    it "returns X" do
      board = "---------"
      expect(subject.(board)).to eq("X")
    end

  end


end
