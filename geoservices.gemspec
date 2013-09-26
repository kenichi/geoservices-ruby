require File.expand_path('../lib/geoservices/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "geoservices"
  s.summary = "A simple wrapper for Esri's GeoServices API"
  s.description = "Esri's GeoServices REST Specification provides a RESTful interface to ArcGIS servers."
  s.homepage = 'https://github.com/Esri/geoservices-ruby'
  s.version = Geoservices::VERSION
  s.authors = ["Andrew Turner", "Kenichi Nakamura"]

  s.date = Date.civil 2013, 9, 26
  s.email = ['aturner@esri.com', 'knakamura@esri.com']

  s.require_paths = ["lib"]
  s.files = `git ls-files`.split "\n"
  s.test_files = `git ls-files -- spec/*`.split "\n"

  s.add_dependency 'json'
  s.add_dependency 'rest-client'
  s.add_development_dependency 'rspec'
end
