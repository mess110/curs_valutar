# CursValutar

Get exchange rates from

http://bnr.ro/Cursul-de-schimb-524.aspx

The gem makes a HTTP request and parses the rates from the result. bnr.html is a sample of how the input data and it used only for testing purposes (from BNR website)

## Installation

Add this line to your application's Gemfile:

    gem "curs_valutar"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install curs_valutar

## Usage

```bash
gem install curs_valutar
curs_valutar help
```

```ruby
require "curs_valutar"

bot = CursValutar::Bot.new
bot.currencies
bot.exchange_rates
bot.exchange_rate_for "USD"
bot.convert_to "USD"
bot.convert_from "USD"
```
