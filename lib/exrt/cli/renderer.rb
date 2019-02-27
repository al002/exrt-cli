require 'tty-table'

module Exrt
  module Cli
    class Renderer
      attr_reader :table

      def initialize(rows)
        @table = TTY::Table.new table_header, rows
      end

      def table_header
        ['Currency', 'Rate']
      end

      def render
        table.render(:unicode)
      end
    end
  end
end
