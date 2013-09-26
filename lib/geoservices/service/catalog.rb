module Geoservices
  class Catalog
    include Geoservices::Base

    attr_reader :services, :version

    def initialize(options = {})
      @host = options[:host]
      self.metadata = get(@host)
      @services = self.metadata['services']
      @version  = self.metadata['currentVersion']
    end

    def [](service_name)
      case service_name
      when Integer
        self.services[service_name]
      when String
        self.services.detect {|s| service_name == s['name']}
      end
    end

  end
end
