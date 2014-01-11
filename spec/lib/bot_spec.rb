require "spec_helper"

describe CursValutar::Bot do
  before :all do
    @bot = CursValutar::Bot.new
  end

  it "crawls" do
    @bot.doc.class.should == Nokogiri::HTML::Document
  end
end
