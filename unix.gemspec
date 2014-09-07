# coding: utf-8
require_relative 'lib/unix/version'

Gem::Specification.new do |spec|
  spec.name          = 'unix'
  spec.version       = Unix::VERSION
  spec.authors       = ['Jack Danger Canty']
  spec.email         = ['github@jackcanty.com']
  spec.summary       = 'Access to system calls from Ruby'
  spec.description   = 'Access to system calls from Ruby'
  spec.homepage      = 'https://github.com/JackDanger/unix'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split(%Q{\x0})
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake-compiler'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop', '~> 0.25'
end
