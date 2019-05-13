require "./lib/setup_board"

describe SetupBoard do

  it do
    allow(Board).to receive(:new)
    subject.()
    expect(Board).to have_received(:new).with("-"*9)
  end

end