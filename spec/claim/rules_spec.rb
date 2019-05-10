class Claim
  class Rules
    
    def allow?(board, space)
      true
    end

  end

end

describe Claim::Rules do
  let(:empty_board) { "---------" }
  let(:space) { 0 }

  context "space is empty" do
    
    it "is allowed" do
      expect(subject.allow?(empty_board, space)).to eq(true)
    end

  end

end