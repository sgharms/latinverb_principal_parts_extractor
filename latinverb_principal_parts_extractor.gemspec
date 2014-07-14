# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'latinverb_principal_parts_extractor/version'

Gem::Specification.new do |spec|
  spec.name          = "latinverb_principal_parts_extractor"
  spec.version       = Linguistics::Latin::Verb::LatinVerb::PrincipalPartsExtractor::VERSION
  spec.authors       = ["Steven G. Harms"]
  spec.email         = ["steven@devbootcamp.com"]
  spec.summary       = %q{Class for extracting principal parts from a Latin sumary string}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
