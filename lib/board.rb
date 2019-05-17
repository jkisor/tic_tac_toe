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
    first_row_winner? || second_row_winner? || !(spaces.count("-") > 0)
  end

  private

  def first_row_winner?
    row = spaces.first(3)
    row.count("-") == 0 && row.uniq.size == 1
  end

  def second_row_winner?
    row = spaces[3..5]
    row.count("-") == 0 && row.uniq.size == 1
  end

end