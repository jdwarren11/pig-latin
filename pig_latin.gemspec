# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pig_latin/version'
require 'pry-byebug'

Gem::Specification.new do |spec|
  spec.name          = "pig_latin"
  spec.version       = PigLatin::VERSION
  spec.authors       = ["Jeremy Warren"]
  spec.email         = ["jdwarren11@gmail.com"]
  spec.summary       = ["Pit Latin Translator"]
  spec.description   = ["translate every word of sentance to pig latin"]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
end
