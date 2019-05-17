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
    first_row_winner? || !(spaces.count("-") > 0)
  end

  private

  def first_row_winner?
    rows = spaces.first(3)
    rows.count("-") == 0 && rows.uniq.size == 1
  end

end