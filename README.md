# Exrt::Cli

Get latest and historical exchange rates published by the [European Central Bank](https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html) in your command line.

## Installation

    $ gem install exrt-cli

## Usage

### Latest

    $ exrt-cli latest --symbols CNY

### History

    $ exrt-cli history --symbols CNY --start_at 2019-02-15 --end_at 2019-02-28

## Related Projects

Core: [exrt](https://github.com/al002/exrt)

API Provider: [exchangeratesapi](https://github.com/exchangeratesapi/exchangeratesapi) 

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/al002/exrt-cli.
