require "json"
require "tty-table"

module Exrt
  module Cli
    class Format
      def self.latest(response)
        r = self.to_json(response)
        rows = []
        r['rates'].each do |symbol, value|
          rows.append([symbol, value])
        end

        rows
      end

      def self.history(response)
        r = self.to_json(response)
        rows = []
        r['rates'].each do |date, rates|
          row = [date]
          rates.each do |symbol, rate|
            row.prepend(symbol, rate)
          end

          rows.append(row)
        end

        rows
      end

      def self.to_json(resp)
        JSON.parse(resp)
      end
    end
  end
end
