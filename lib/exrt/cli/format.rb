require "json"
require "tty-table"

module Exrt
  module Cli
    class Format
      def self.latest(base, response)
        r = JSON.parse(response)
        rows = []
        r['rates'].each do |symbol, value|
          rows.append([symbol, value])
        end

        rows
      end
    end
  end
end
