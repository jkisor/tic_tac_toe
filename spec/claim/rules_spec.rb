class Claim
  class Rules
    EMPTY_SPACE = "-"

    def allow?(board, space)
      board.chars[space] == EMPTY_SPACE
    end

  end

end

describe Claim::Rules do

  before { @results = subject.allow?(board, space) }

  context "space is empty" do
    
    let(:board) { "-" * 9 }
    let(:space) { 0 }

    it "is allowed" do
      expect(@results).to eq(true)
    end

  end

  context "space already claimed" do
    let(:board) { "X--------" }
    let(:space) { 0 }

    it "isn't allowed" do
      expect(@results).to eq(false)
    end

  end

  context "space doesn't exist" do
    let(:board) { "-" * 9 }
    let(:space) { 666 }

    it "isn't allowed" do
      expect(@results).to eq(false)
    end

  end

end