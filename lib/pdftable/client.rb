module Pdftable
  class Client

    attr_reader :connection

    def initialize(connection = nil )
      @connection = connection || Pdftable::Connection.new
    end

    def convert(file_path, format: 'xml')
      path = "/api"
      connection.post(path, file: file_path, format: format)
    end

    def remaining_pages
      path = "/api/remaining"
      connection.get(path)
    end

  end
end
