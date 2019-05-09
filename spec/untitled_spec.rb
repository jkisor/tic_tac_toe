class Claim

  def initialize(rules, commit)
    @rules  = rules
    @commit = commit
  end


  def call
    @commit.() if @rules.allow?
    
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
  let(:rules)  { double(:allow? => false) }

    it "doesn't commits the claim" do
      expect(commit).not_to have_received(:call)
    end

  end
  

  
end