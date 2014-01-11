$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "curs_valutar"

class CursValutar::Bot
  def initialize
    @doc = Nokogiri::HTML(File.open(File.join("spec", "bnr.html")))
  end
end
