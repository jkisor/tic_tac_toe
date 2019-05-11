
class FormatBoard
  
  def call(board)
    shapes = board.chars
    shape_rows = shapes.each_slice(3).map do |row|
      "| #{row.join(" | ")} |"
    end
    
    [
      " ----------- ",
      shape_rows,
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