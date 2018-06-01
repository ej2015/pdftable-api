$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pdftable"
require "fakeweb"

FakeWeb.allow_net_connect = false

Pdftable.configure do |c|
	c.key = 'abcde'
end
