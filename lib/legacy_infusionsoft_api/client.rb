require "xmlrpc/client"

module LegacyInfusionsoftApi
  class Client
    include LegacyInfusionsoftApi::Helpers

    attr_reader :api_key, :app_name

    def initialize(options)
      model :Contact
      model :ContactAction
      model :ContactGroup
      model :ContactGroupAssign
      model :ContactGroupCategory

      @api_key  = options[:api_key]
      @app_name = options[:app_name]
    end

    def connection
      @client  ||= XMLRPC::Client.new2("https://#{@app_name}.infusionsoft.com:443/api/xmlrpc")
    end
  end
end
