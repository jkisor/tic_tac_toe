require "./lib/game/play/loop/claim/next_shape"
require "./lib/board"

describe Game::Play::Loop::Claim::NextShape do

  context "board is empty" do
    let(:board) { Board.new("-" * 9) }

    it "returns X" do
      expect(subject.(board)).to eq("X")
    end

  end

  context "when O's turn" do
    let(:board) { Board.new("X--------") }

    it "returns O" do
      expect(subject.(board)).to eq("O")
    end

  end

  context "when X's turn'" do
    let(:board) { Board.new("XO-------") }

    it "returns X" do
      expect(subject.(board)).to eq("X")
    end

  end

end
