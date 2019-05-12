require "./lib/board"

describe Board do
  subject { described_class.new(data) }

  let(:data) { "-" * 9 }

  it "has data" do
    expect(subject.data).to eq(data)
  end

  it "has spaces" do
    expect(subject.spaces).to eq(data.chars)  
  end

  it "has rows" do
    expect(subject.rows).to eq([
      ["-", "-", "-"],
      ["-", "-", "-"],
      ["-", "-", "-"],
    ])
  end

  it "has empty spaces" do
    expect(subject).to have_empty_spaces
  end

  context "when no empty spaces" do
    let(:data) { "X" * 9 }

    it "doesn't have spaces" do
      expect(subject).not_to have_empty_spaces
    end
  
  end

end