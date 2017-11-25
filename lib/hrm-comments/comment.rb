require 'zlib'
require 'base64'

module HRMComments
  class Comment
    CHUNK_COUNT = 514
    LINE_LENGTH = 80
    TERMINATOR = ';'

    attr_accessor :polylines

    def initialize(polylines = [])
      @polylines = polylines
    end

    def to_s
      string = encoded.sub(/={1,2}$/, '')
      string = string.scan(/.{1,#{LINE_LENGTH}}/).join("\n")
      string + TERMINATOR
    end

    private

    def header()
      num_instructions = @polylines.map(&:instructions).map(&:length).sum()
      # Number of instructions (points + end markers) plus an obligatory fixed
      # zero
      [num_instructions, 0]
    end

    def body()
      @polylines.map(&:to_a).flatten
    end

    # A comment consists of a header and a list of poly-lines
    def to_a()
      array = header + body
      array.fill(0, array.length...CHUNK_COUNT)
    end

    def binary
      to_a.pack('s<*')
    end

    def compressed
      Zlib::deflate(binary)
    end

    def encoded
      Base64::strict_encode64(compressed)
    end
  end
end
