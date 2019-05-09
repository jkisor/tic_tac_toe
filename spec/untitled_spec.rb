class Claim

  def initialize(rules, commit)
    @rules  = rules
    @commit = commit
  end


  def call
    @rules.allow?
    @commit.()
  end

end

describe Claim do

  subject(:claim) { Claim.new(rules, commit) }

  let(:rules)  { double(:allow? => true) }
  let(:commit) { double(:call => nil) }
  
  before { claim.() }
  
  it "checks rules" do
    expect(rules).to have_received(:allow?)
  end

  it "commits the claim" do
    expect(commit).to have_received(:call)
  end

  context "against the rules" do
    it "doesn't commits the claim"
  end
  

  
end