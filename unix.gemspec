# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unix/version'

Gem::Specification.new do |spec|
  spec.name          = "unix"
  spec.version       = Unix::VERSION
  spec.authors       = ["Jack Danger Canty"]
  spec.email         = ["github@jackcanty.com"]
  spec.summary       = %q{Allows direct access to system calls from Ruby programs}
  spec.description   = %q{Based on the tutorials in Linux System Programming (2nd edition)}
  spec.homepage      = "https://github.com/JackDanger/unix"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
