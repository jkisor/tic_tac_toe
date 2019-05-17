class Board

  attr_accessor :data

  def initialize(data)
    @data = data
  end

  def spaces
    @data.chars
  end

  def rows
    spaces.each_slice(3).to_a
  end

  def done?
    winner? || no_empty_spaces?
  end

  private

  def no_empty_spaces?
    !(spaces.count("-") > 0)
  end

  def winner?
    top_row_winner? || middle_row_winner? || bottom_row_winner?
  end

  def row_winner?(row)
    row.count("-") == 0 && row.uniq.size == 1
  end

  def top_row_winner?
    row_winner?(rows[0])
  end

  def middle_row_winner?
    row_winner?(rows[1])
  end

  def bottom_row_winner?
    row_winner?(rows[2])
  end


end