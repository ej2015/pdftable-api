require 'pdftable/version'
require 'pdftable/configuration'
require 'pdftable/client'
require 'pdftable/connection'
require 'rest-client'

module Pdftable

	class << self
		attr_accessor :configuration

		def configuration
			@configuration ||= Configuration.instance
		end

		def configure
			yield(configuration)
		end

		def client
			Pdftable::Client.new
		end
	end

end
