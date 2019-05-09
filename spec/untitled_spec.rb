class Claim

  def initialize(rules)
    @rules = rules
  end


  def call
    @rules.allow?
  end

end

describe Claim do

  subject(:claim) { Claim.new(rules) }

  let(:rules) { double(:allow? => true) }
  
  it "checks rules" do
    claim.()
    expect(rules).to have_received(:allow?)
  end

  it "update board"
  it "succeeds"

  context "against the rules" do
    it "doesn't update the board"
    it "fails"
  end
  

  
end