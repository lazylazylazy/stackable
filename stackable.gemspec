# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stackable/version'

Gem::Specification.new do |spec|
  spec.name          = "stackable"
  spec.version       = StackableV::VERSION
  spec.authors       = ["Michael", "Erica", "Kumi"]
  spec.email         = ["michaelnicholasfisher@gmail.com", "erica.salvaneschi@gmail.com"]
  spec.summary       = %q{Ruby toolkit for working with the unofficial Stack Overflow Careers API}
  spec.description   = %q{Simple Ruby wrapper for the unofficial Stack Overflow Careers API}
  spec.homepage      = "https://github.com/mfisher90/stackable"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5.1"
  spec.add_development_dependency "rake"
end
