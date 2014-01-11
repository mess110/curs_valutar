module CursValutar
  module BnrConcern
    def currencies
      @doc.css(".c2").collect{|td| td.text}.reject!{|c| c.empty?}.sort
    end

    def exchange_rates
      {
        :date => Date.today.to_s,
        :currencies => currencies,
        :exchange_rates => currencies.collect{|c| exchange_rate_for(c)}
      }
    end

    def exchange_rate_for s
      result = {}
      @doc.css(".cursTable tr").each do |tr|
        currency = tr.css(".c2").text
        if currency == s
          result[:short_name] = currency
          result[:long_name] = tr.css("td")[0].text.strip
          # TODO might not work for all languages
          # find localized decimal separator
          result[:value] = tr.css("td")[6].text.strip.gsub(",",".")
          result[:date] = Date.today.to_s
        end
      end
      result
    end

    def convert_to amount, to
      to_rate = exchange_rate_for to
      (amount.to_f / BigDecimal.new(to_rate[:value])).to_f
    end

    def convert_from amount, from
      from_rate = exchange_rate_for from
      (amount.to_f * BigDecimal.new(from_rate[:value])).to_f
    end
  end
end
