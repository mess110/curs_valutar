require "spec_helper"

describe CursValutar::BnrConcern do
  before :all do
    @bot = CursValutar::Bot.new
  end

  it "finds the exchange rate for AUD" do
    aud = @bot.exchange_rate_for("AUD")
    aud.keys.size.should be > 0
    aud[:short_name].should == "AUD"
  end

  it "lists all currencies" do
    currencies = @bot.currencies
    currencies.class.should be Array
    currencies.include?("USD").should be true
  end

  it "lists a sorted list of currencies" do
    @bot.currencies.should == @bot.currencies.sort
  end

  it "lists all exchange rates" do
    @bot.exchange_rates[:currencies].should == @bot.currencies
  end
  
  it "converts from LEU to AUD and from AUD to LEU" do
    @bot.convert_to(100, "AUD").to_i.should == 33
    @bot.convert_from(100, "AUD").to_i.should == 297
  end
end
