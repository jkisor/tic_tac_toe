require "./lib/claim"

describe Claim do

  subject(:claim) { Claim.new(rules, commit) }

  let(:rules)  { double(:allow? => true) }
  let(:commit) { double(:call => updated_board) }

  let(:board) { double }
  let(:space) { double } # id?

  let(:updated_board) { double }
  
  before { @results = claim.(board, space) }
  
  it "checks rules" do
    expect(rules).to have_received(:allow?).with(board, space)
  end

  it "commits the move" do
    expect(commit).to have_received(:call).with(board, space)
  end

  it "returns updated board" do
    expect(@results).to eq(updated_board)
  end

  context "against the rules" do
    let(:rules)  { double(:allow? => false) }

    it "doesn't commits the claim" do
      expect(commit).not_to have_received(:call)
    end

  end
  

  
end