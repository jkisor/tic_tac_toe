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
    expect(subject).not_to be_done
  end

  context "when no empty spaces" do
    let(:data) { "X" * 9 }

    it "is done" do
      expect(subject).to be_done
    end

  end

  context "top row taken by same shape" do
    let(:data) { "XXX------" }

    it "is done" do
      expect(subject).to be_done
    end

  end

  context "middle row taken by same shape" do
    let(:data) { "---XXX---" }

    it "is done" do
      expect(subject).to be_done
    end
    
  end

  context "bottom row taken by same shape" do
    let(:data) { "------XXX" }

    it "is done" do
      expect(subject).to be_done
    end
    
  end

  context "left column taken by same shape" do
    let(:data) { "X--X--X--" }

    it "is done" do
      expect(subject).to be_done
    end

  end

  context "middle column taken by same shape" do
    let(:data) { "-X--X--X-" }

    it "is done" do
      expect(subject).to be_done
    end
    
  end

  context "right column taken by same shape" do
    let(:data) { "--X--X--X" }

    it "is done" do
      expect(subject).to be_done
    end
    
  end

  context "diagonal taken by same shape" do
    let(:data) { "X---X---X" }

    it "is done" do
      expect(subject).to be_done
    end
  end

end