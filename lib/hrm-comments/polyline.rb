module HRMComments
  class Polyline
    # A point is a list of x and y coordinates, each from 0 to 65535 – unsigned
    # short int, two bytes
    attr_accessor :points

    # A poly-line is a list of at least two points: From the first to the second,
    # from the second to the third etc.
    def initialize(points = [])
      @points = points
    end

    # Flattened instructions: [x, y, x, y, …, 0, 0]
    def to_a()
      instructions.flatten
    end

    # Points plus a double-zero end marker
    def instructions
      @points + [[0, 0]]
    end
  end
end
