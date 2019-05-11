require "./lib/claim/commit"

describe Claim::Commit do
  
  let(:board) { "-" * 9 }
  
  it "returns a board with space taken" do
    space = 0
    
    results = subject.call(board, space)

    expect(results).to eq("X--------")
  end

  it "returns a board with space taken" do
    space = 3
    
    results = subject.call(board, space)

    expect(results).to eq("---X-----")
  end

end