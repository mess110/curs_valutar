# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "curs_valutar/version"

Gem::Specification.new do |spec|
  spec.name          = "curs_valutar"
  spec.version       = CursValutar::VERSION
  spec.authors       = ["Cristian Mircea Messel"]
  spec.email         = ["mess110@gmail.com"]
  spec.summary       = %q{Exchange rates from bnr.ro}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "thor"
  spec.add_development_dependency "httparty"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "rdoc"
end
