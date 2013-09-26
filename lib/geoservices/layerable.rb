module Geoservices
  module Layerable

    def layers(layer_name = nil)
      @full_layers ||= get(@url + '/layers')["layers"]
      return @full_layers if layer_name.nil?
      @full_layers.each {|fl| return fl if fl['name'] == layer_name}
    end

    def [](layer_name)
      case layer_name
      when Integer
        return self.metadata.layers[layer_name]
      else
        return self.layers(layer_name)
      end
      nil
    end

    def legend
      @legend ||= get(@url + '/legend')
    end

  end
end
