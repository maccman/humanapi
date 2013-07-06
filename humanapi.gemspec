# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'humanapi/version'

Gem::Specification.new do |spec|
  spec.name          = "humanapi"
  spec.version       = HumanAPI::VERSION
  spec.authors       = ["Alex MacCaw"]
  spec.email         = ["alex@alexmaccaw.com"]
  spec.description   = %q{API client for HumanAPI}
  spec.summary       = %q{API client for HumanAPI}
  spec.homepage      = "https://github.com/maccman/humanapi"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nestful", "~> 1.0.4"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
