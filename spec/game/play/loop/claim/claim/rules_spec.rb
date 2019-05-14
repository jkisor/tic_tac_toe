require "./lib/game/play/loop/claim/rules"
require "./lib/board"

describe Game::Play::Loop::Claim::Rules do

  before { @results = subject.allow?(board, space) }

  context "space is empty" do
    
    let(:board) { Board.new("-" * 9) }
    let(:space) { 0 }

    it "is allowed" do
      expect(@results).to eq(true)
    end

  end

  context "space already claimed" do
    let(:board) { Board.new("X--------") }
    let(:space) { 0 }

    it "isn't allowed" do
      expect(@results).to eq(false)
    end

  end

  context "space doesn't exist" do
    let(:board) { Board.new("-" * 9) }
    let(:space) { 666 }

    it "isn't allowed" do
      expect(@results).to eq(false)
    end

  end

end