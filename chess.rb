
class Board
  def initialize
    @grid = Array.new(8) {Array.new(8)}
  end

  def show
    @grid.each do |row|
      row.each do |square|
        if square
          print square
        else
            print "-"
        end
      end
      puts
    end  
  end

  def insert(x,y,value)
    @grid[x][y] = value
  end

  def get(x,y)
    return @grid[x][y]
  end 

end

class Piece 
  attr_accessor :name

  def to_s
    "I am an abstract piece, go away"
  end

end

class Blackpawn < Piece

  def to_s
    "BP"
  end

end

class Whitepawn < Piece

  def to_s
    "WP"
  end

end
  