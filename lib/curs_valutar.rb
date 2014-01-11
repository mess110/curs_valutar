require "curs_valutar/version"
require "curs_valutar/bot"

require "thor"

module CursValutar
  class Cli < Thor
    desc "currencies", "list currency short names"
    def currencies
      puts Bot.new.currencies
    end

    desc "rate short_name", "list exchange rate"
    def rate short_name
      puts Bot.new.exchange_rate_for(short_name)
    end

    desc "rates", "list all known info"
    def rates
      puts Bot.new.exchange_rates
    end

    desc "convert to/from amount short_name", "covert to/from shortname"
    def convert s, amount, short_name
      unless ["from", "to"].include? s
        puts "Only from or to allowed"
        exit 1
      end
      puts Bot.new.send("convert_#{s}", amount, short_name)
    end
  end
end
