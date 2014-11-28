# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lego_stock_checker/version'

Gem::Specification.new do |spec|
  spec.name          = "lego_stock_checker"
  spec.version       = LegoStockChecker::VERSION
  spec.authors       = ["Taylor Mock"]
  spec.email         = ["tmock12@gmail.com"]
  spec.summary       = %q{Stock Checker for current lego stock}
  spec.description   = %q{Checks current stock availability for sites that sell LEGO}
  spec.homepage      = "http://www.ooslego.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
