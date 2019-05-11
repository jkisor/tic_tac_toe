
class FormatBoard
  
  def call(board)
    space_rows = board.chars.each_slice(3).to_a.map do |row|
      "| #{row.join(" | ")} |"
    end
    
    [
      " ----------- ",
      space_rows,
      " ----------- ",
    ].flatten.join("\n")

  end

end

describe FormatBoard do
  
  it "" do
    input  = "XOXOXOXOX"
    output = <<~BOARD.chomp
       ----------- 
      | X | O | X |
      | O | X | O |
      | X | O | X |
       ----------- 
    BOARD
    
    expect( FormatBoard.new.(input) ).to eq(output)
  end

end