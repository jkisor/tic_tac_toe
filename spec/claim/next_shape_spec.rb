class Claim
  class NextShape
    
    def call(board)
      if board.include?("X")
        return "O"
      end
      
      "X"
    end

  end
end


describe Claim::NextShape do
  
  context "board is empty" do
    let(:board) { "-" * 9 }

    it "returns X" do
      expect(subject.(board)).to eq("X")
    end

  end

  context "when O's turn" do
    let(:board) { "X--------" }
    
    it "returns O" do
      expect(subject.(board)).to eq("O")
    end

  end

  xcontext "when X's turn'" do
    
    it "returns X" do
      let(:board) { "XO-------" }

      expect(subject.(board)).to eq("X")
    end

  end

end
