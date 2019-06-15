# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i2c_drivers/version'

Gem::Specification.new do |spec|
  spec.name          = 'i2c_drivers'
  spec.version       = I2CDrivers::VERSION
  spec.authors       = ['Marcin Ruszkiewicz']
  spec.email         = ['marcin.ruszkiewicz@polcode.net']

  spec.summary       = 'Interface with I2C devices on Raspberry PI from Ruby.'
  spec.homepage      = 'https://github.com/marcinruszkiewicz/i2c_drivers'
  spec.license       = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
