class Claim
  class Rules
    
    def allow?(board, space)
    end

  end

end

describe Claim::Rules do
  let(:board) { double }
  let(:space) { double }

  it do
    subject.allow?(board, space)
  end

end