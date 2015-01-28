# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metova/dummy/version'

Gem::Specification.new do |spec|
  spec.name          = 'metova-dummy'
  spec.version       = Metova::Dummy::VERSION
  spec.authors       = ['Logan Serman']
  spec.email         = ['logan.serman@metova.com']
  spec.summary       = %q{A small Rails app for other gems to test with}
  spec.description   = spec.summary
  spec.homepage      = 'http://github.com/metova/metova-dummy'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'sqlite3'

  spec.add_development_dependency 'responders', '~> 2.0'
  spec.add_dependency 'rails', '~> 4.2.0'

end
