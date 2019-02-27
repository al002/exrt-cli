require "exrt/cli/version"
require "thor"
require "exrt"
require_relative "cli/format"

module Exrt
  module Cli
    class CLI < Thor
      class_option :base, :type => :string, :default => "USD"
      class_option :symbols, :type => :array, :default => []

      desc "latest --base --symbols", "show latest exchange rates"
      def latest
        base = options["base"]
        symbols = options["symbols"]
        response = Exrt::Rate.latest(base: base, symbols: symbols)
        puts Exrt::Cli::Format.latest(base, response)
      end

      desc "history --base --symbols --start_at --end_at", "show history exchange rates"
      option :start_at, :type => :string, :required => true
      option :end_at, :type => :string, :required => true
      def history
        base = options["base"]
        symbols = options["symbols"]
        response = Exrt::Rate.history(
          base: base,
          symbols: symbols,
          start_at: options["start_at"],
          end_at: options["end_at"]
        )
        puts response
      end
    end
  end
end
