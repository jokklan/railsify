# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'railsify/version'

Gem::Specification.new do |spec|
  spec.name          = "railsify"
  spec.version       = Railsify::VERSION
  spec.authors       = ["Johan Frølich"]
  spec.email         = ["johan@pylonweb.dk"]
  spec.summary       = "Make any asset library ready for Rails!"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
