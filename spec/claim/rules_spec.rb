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

  it "is allowed" do
    subject.allow?(empty_board, space)  
  end

end