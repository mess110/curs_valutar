require "httparty"
require "nokogiri"

require "curs_valutar/bnr_concern"

module CursValutar
  class Bot
    include BnrConcern

    include HTTParty
    base_uri "bnr.ro"

    attr_accessor :doc

    def initialize
      response = self.class.get("/Cursul-de-schimb-524.aspx")
      @doc = Nokogiri::HTML(response.body)
    end

    # def save_test_req
    #   response = self.class.get("/Cursul-de-schimb-524.aspx")
    #   File.open(File.join("spec", "bnr.html"), "w") {|f| f.write(response.body) }
    # end
  end
end
