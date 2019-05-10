class Claim

  def initialize(rules, commit)
    @rules  = rules
    @commit = commit
  end


  def call(board, space)
    
    if @rules.allow?
      @commit.(board, space) 
    else
      board
    end
    
  end

end

describe Claim do

  subject(:claim) { Claim.new(rules, commit) }

  let(:rules)  { double(:allow? => true) }
  let(:commit) { double(:call => updated_board) }

  let(:board) { double }
  let(:space) { double } # id?

  let(:updated_board) { double }
  
  before { claim.(board, space) }
  
  it "checks rules" do
    expect(rules).to have_received(:allow?)
  end

  it "commits the move" do
    expect(commit).to have_received(:call).with(board, space)
  end

  context "against the rules" do
    let(:rules)  { double(:allow? => false) }

    it "doesn't commits the claim" do
      expect(commit).not_to have_received(:call)
    end

  end
  

  
end