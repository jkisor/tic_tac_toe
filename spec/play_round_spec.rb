class PlayRound
  
  def call(get_input, claim)
    space = get_input.()
    claim.()
  end

end

describe PlayRound do
  
  let(:get_input) { double(:call => nil) }
  let(:claim)     { double(:call => nil) }

  before { subject.(get_input, claim) }

  it "gets input" do
    expect(get_input).to have_received(:call)
  end

  it "claims space" do
    expect(claim).to have_received(:call)
  end

end