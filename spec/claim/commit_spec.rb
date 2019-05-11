require "./lib/claim/commit"

describe Claim::Commit do
  
  let(:board) { "-" * 9 }
  
  it "returns a board with space taken" do
    space = 0
    shape = "X"
    
    results = subject.call(board, space, shape)

    expect(results).to eq("X--------")
  end

  it "returns a board with space taken" do
    space = 3
    shape = "X"
    
    results = subject.call(board, space, shape)

    expect(results).to eq("---X-----")
  end

end