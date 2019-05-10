class Claim
  class Rules
    EMPTY_SPACE = "-"

    def allow?(board, space)
      board.chars[space] == EMPTY_SPACE
    end

  end

end

describe Claim::Rules do

  context "space is empty" do
    
    let(:board) { "-" * 9 }
    let(:space) { 0 }

    it "is allowed" do
      expect(subject.allow?(board, space)).to eq(true)
    end

  end

  context "space already claimed" do
    let(:board) { "X--------"}
    let(:space) { 0 }

    it "isn't allowed" do
      expect(subject.allow?(board, space)).to eq(false)
    end

  end

end