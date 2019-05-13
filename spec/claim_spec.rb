require "./lib/claim"

describe Claim do

  subject(:claim) { Claim.new(rules, next_shape, commit) }

  let(:rules)      { double(:allow? => true) }
  let(:next_shape) { double(:call => shape)}
  let(:commit)     { double(:call => updated_board) }

  let(:board) { double }
  let(:space) { double } # id?
  let(:shape) { double }

  let(:updated_board) { double }

  before { @results = claim.(board, space) }

  it "checks rules" do
    expect(rules).to have_received(:allow?).with(board, space)
  end

  it "determines shape" do
    expect(next_shape).to have_received(:call).with(board)
  end

  it "commits the move" do
    expect(commit).to have_received(:call).with(board, space, shape)
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