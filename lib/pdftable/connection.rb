require 'rest-client'
require 'pdftable/configuration'

module Pdftable
  class Connection 

		attr_reader :configuration

		def initialize
			@configuration = Pdftable::Configuration.instance
      @conn = RestClient::Resource.new(@configuration.host)
		end
    
    def get (path)
      opt = {params: {key: configuration.key} }
      @conn[path].get(opt)
    end

		def post (path, file:, format:)
			File.open file do |f|
        opt = {  file: f, params: { key: configuration.key, format: format} }
			  @conn[path].post(opt)
			end
			#req = RestClient::Request.new method: :post, url:  uri, payload: { multipart: true, file: File.new("pdf_table.pdf", 'rb')}, headers: {params: {key: 'zbwq7wyefyrr', format: "xml"}}
			#response = req.execute
    end
    

  end
end



  
