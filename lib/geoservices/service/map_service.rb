module Geoservices
  class MapService
    include Geoservices::Base
    include Geoservices::Layerable
    include Geoservices::Queryable

    attr_accessor :metadata, :url

    def initialize(options)
      @url = options[:url]
      @metadata = get(@url)
    end

  end
end
