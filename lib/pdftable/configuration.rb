require 'singleton'

module Pdftable
	class Configuration
		include Singleton

		attr_accessor :host, :key

		def initialize
			@host = 'pdftables.com'
			@key = nil
		end


	end
end
