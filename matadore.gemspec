# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'matadore/version'

Gem::Specification.new do |spec|
  spec.name          = "matadore"
  spec.version       = Matadore::VERSION
  spec.authors       = ["abadfish"]
  spec.email         = ["kirsten.ofarrell@gmail.com"]

  spec.summary       = "Find data on weather and ocean elements beased on geolocation."
  spec.description   = "Enter your address or zipcode and then specify what element you would like data on."
  spec.homepage      = "https://github.com/abadfish/matadore"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "matadore"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  spec.add_dependency "geocoder"
end
