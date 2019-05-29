module Pdftable
  class Connection

    attr_reader :configuration

    def initialize
      @configuration = Pdftable::Configuration.instance
    end

    def get (path)
      opt = { key: configuration.key }
      res = RestClient.get url(path, opt)
      parse_response(res)
    end

    def post (path, file:, format:)
      opt = {  key: configuration.key, format: format }
      res = RestClient.post url(path, opt), file: File.new(file, 'rb')
      parse_response(res)
      #req = RestClient::Request.new method: :post, url:  uri, payload: { multipart: true, file: File.new("pdf_table.pdf", 'rb')}, headers: {params: {key: 'abcde', format: "xml"}}
      #response = req.execute
    end

    private

    def url(path, opt)
      URI::HTTPS.build(host: configuration.host, path: path, query: URI.encode_www_form(opt)).to_s
    end

    def parse_response(res)
      res.body
    end

  end
end




