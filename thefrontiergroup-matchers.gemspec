# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thefrontiergroup/matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "thefrontiergroup-matchers"
  spec.version       = TheFrontierGroup::Matchers::VERSION
  spec.authors       = ["Rebecca Skinner"]
  spec.email         = ["becky@thefrontiergroup.com.au"]
  spec.summary       = %q{A collection of rspec matchers used by TFG projects.}
  spec.description   = %q{A collection of rspec matchers used by TFG projects.}
  spec.homepage      = "https://github.com/thefrontiergroup/thefrontiergroup-matchers/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec-mocks', "~> 3.0", "~> 3.1"
  spec.add_development_dependency 'byebug'

  spec.add_dependency "rspec", "~> 3.1", "~> 3.0"
end
