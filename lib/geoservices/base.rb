require 'json'
require 'rest-client'

module Geoservices
  module Base

    attr_accessor :metadata, :url
    attr_writer :token, :username

    def username
      @username ||= ''
    end

    def token
      @token ||= ''
    end

    def default_params
      {:f => 'json', :token => token}
    end

    def usernameify s = ''
      s.gsub! /%username%/, username
    end


    [:get, :post].each do |method|
      define_method(method) do |url, params = {}|
        usernameify url if url
        JSON.parse RestClient.__send__(method, url, :params => default_params.merge(params), :accept => :json)
      end
    end

  end
end
