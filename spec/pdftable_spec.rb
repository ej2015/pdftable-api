require "spec_helper"

describe Pdftable do

  let(:client) { Pdftable.client }

  it "has a version number" do
    expect(Pdftable::VERSION).not_to be nil
  end

  describe "#convert" do
    it "has connection to call post" do
      expect(client.connection).to receive(:post).with("/api", file: "string", format: "xml")
      client.convert("string")
    end

    it "allows other format" do
      expect(client.connection).to receive(:post).with("/api", file: "string", format: "xslx")
      client.convert("string", format: 'xslx')
    end
  end

  describe "#remaining_pages" do
    it "has connection to call get" do
      expect(client.connection).to receive(:get).with("/api/remaining")
      client.remaining_pages
    end
  end

end
