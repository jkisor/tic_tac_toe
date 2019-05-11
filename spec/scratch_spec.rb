require "./lib/format_board"

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