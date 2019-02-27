require "json"
require "tty-table"

module Exrt
  module Cli
    class Format
      def self.latest(base, response)
        r = JSON.parse(response)
        arr = []
        r.each do |symbol, value|
          arr.push({
            symbol: symbol,
            rate: value,
          })
        end

        arr
      end
    end
  end
end
