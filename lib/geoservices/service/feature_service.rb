module Geoservices
  class FeatureService
    include Geoservices::Base
    include Geoservices::Layerable
    include Geoservices::Queryable

    def initialize(options = {})
      @url = options[:url]
      @token = options.delete(:token)
      @metadata = get(@url)
    end

  end
end
