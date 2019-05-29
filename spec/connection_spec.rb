require "spec_helper"

describe Pdftable::Connection do

  let(:connection) { described_class.new }

  FakeWeb.register_uri(:get, "https://pdftables.com/api/remaining?key=abcde", body: "Good")
  FakeWeb.register_uri(:post, "https://pdftables.com/api?key=abcde&format=xml", body: "Good")

  it "gets configurations" do
    expect(connection.configuration.host).to eq "pdftables.com"
    expect(connection.configuration.key).to eq "abcde"
  end

  describe "#get" do
    it "calls the correct url" do
      expect(connection.get("/api/remaining")).to eq "Good"
    end
  end

  describe "#post" do
    it "calls the correct url" do
      file = File.expand_path("../helpers/file", __FILE__)
      expect(connection.post("/api", file: file.to_s, format: 'xml')).to eq "Good"
    end
  end
end
