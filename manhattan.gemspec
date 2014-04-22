# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manhattan/version'

Gem::Specification.new do |spec|
  spec.name          = "manhattan"
  spec.version       = Manhattan::VERSION
  spec.authors       = ["John Koht"]
  spec.email         = ["john@kohactive.com"]
  spec.description   = "A powerful, mobile-first responsive framework built on Bourbon Neat."
  spec.summary       = "A powerful, mobile-first responsive framework built on Bourbon Neat."
  spec.homepage      = "https://github.com/johnkoht/manhattan"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "bourbon", "~> 3.2.0"
  spec.add_dependency "neat", "~> 1.4.0"
  spec.add_dependency "sass", "~> 3.0"
end
