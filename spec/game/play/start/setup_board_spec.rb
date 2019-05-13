require "./lib/game/play/start/setup_board"

describe Game::Play::Start::SetupBoard do

  it do
    allow(Board).to receive(:new)
    subject.()
    expect(Board).to have_received(:new).with("-"*9)
  end

end