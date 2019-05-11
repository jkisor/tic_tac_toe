class Claim
  class NextShape
    
    def call(board)
      return "O" if board.include?("X")
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

  context "when O's turn" do
    
    it "returns O" do
      board = "X--------"
      expect(subject.(board)).to eq("O")
    end

  end


end
