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

  def top_row_winner?
    row = rows[0]
    row.count("-") == 0 && row.uniq.size == 1
  end

  def middle_row_winner?
    row = rows[1]
    row.count("-") == 0 && row.uniq.size == 1
  end

  def bottom_row_winner?
    row = rows[2]
    row.count("-") == 0 && row.uniq.size == 1
  end


end