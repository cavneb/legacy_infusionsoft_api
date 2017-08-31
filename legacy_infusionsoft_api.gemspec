# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "legacy_infusionsoft_api/version"

Gem::Specification.new do |spec|
  spec.name          = "legacy_infusionsoft_api"
  spec.version       = LegacyInfusionsoftApi::VERSION
  spec.authors       = ["Eric Berry"]
  spec.email         = ["cavneb@gmail.com"]

  spec.summary       = "Legacy Infusionsoft API"
  spec.description   = "Ruby client for Legacy XML-RPC Infusionsoft API"
  spec.homepage      = "https://github.com/cavneb/legacy_infusionsoft_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency             "xmlrpc",   "~> 0.3.0"
  spec.add_development_dependency "bundler",  "~> 1.15"
  spec.add_development_dependency "rake",     "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop",  "~> 0.49"
end
