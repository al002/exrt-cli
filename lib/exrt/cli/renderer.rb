require 'tty-table'
require_relative "format"

module Exrt
  module Cli
    LATEST = :latest
    HISTORY = :history

    class Renderer
      attr_reader :table, :type, :data

      def initialize(d:, t:)
        @data = d
        @type = t
        @table = TTY::Table.new header, rows
      end

      def is_latest?
        type == Exrt::Cli::LATEST
      end

      def is_history?
        type == Exrt::Cli::HISTORY
      end

      def header
        if is_latest?
          latest_table_header
        elsif is_history?
          history_table_header
        else
          []
        end
      end

      def rows
        if is_latest?
          Exrt::Cli::Format.latest(data)
        elsif is_history?
          Exrt::Cli::Format.history(data)
        else
          []
        end
      end

      def latest_table_header
        %w[Currency Rate]
      end

      def history_table_header
        %w[Currency Rate Date]
      end

      def render
        table.render(:ascii)
      end
    end
  end
end
