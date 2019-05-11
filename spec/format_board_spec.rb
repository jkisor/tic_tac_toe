require "./lib/format_board"

describe FormatBoard do
  
  it "" do
    input  = "XOXOXOXOX"
    output = [
      " ----------- ",
      "| X | O | X |",
      "| O | X | O |",
      "| X | O | X |",
      " ----------- "
    ]
    
    expect( FormatBoard.new.(input) ).to eq(output)
  end

end