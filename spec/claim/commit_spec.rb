require "./lib/claim/commit"

describe Claim::Commit do
  
  it "returns a board with space taken" do
    board = "-" * 9
    space = 0
    
    results = subject.call(board, space)

    expect(results).to eq("X--------")
  end

end