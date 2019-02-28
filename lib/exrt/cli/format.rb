require "json"
require "tty-table"

module Exrt
  module Cli
    class Format
      def self.latest(response)
        rows = []
        response['rates'].each do |symbol, value|
          rows.append([symbol, value])
        end

        rows
      end

      def self.history(response)
        rows = []
        response['rates'].each do |date, rates|
          row = [date]
          rates.each do |symbol, rate|
            row.prepend(symbol, rate)
          end

          rows.append(row)
        end

        rows
      end
    end
  end
end
