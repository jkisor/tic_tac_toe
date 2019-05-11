class FormatBoard
  
  def call(board)
    spaces = board.chars

    rows = spaces.each_slice(3)

    formatted_rows = rows.map do |row| 
      "| #{row.join(" | ")} |"
    end
    
    [
      " ----------- ",
      formatted_rows,
      " ----------- ",
    ].flatten

  end

end