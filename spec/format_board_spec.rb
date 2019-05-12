require "./lib/format_board"
require "./lib/board"
describe FormatBoard do
  
  it "" do
    input  = Board.new("XOXOXOXOX")
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