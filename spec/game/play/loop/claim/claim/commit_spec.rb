require "./lib/game/play/loop/claim/commit"
require "./lib/board"

describe Game::Play::Loop::Claim::Commit do

  let(:board) { Board.new("-" * 9) }

  it "returns a board with space taken" do
    space = 0
    shape = "X"

    results = subject.call(board, space, shape)

    expect(results.data).to eq("X--------")
  end

  it "returns a board with space taken" do
    space = 3
    shape = "X"

    results = subject.call(board, space, shape)

    expect(results.data).to eq("---X-----")
  end

end