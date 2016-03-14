# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave-mimetype-magic/version'

Gem::Specification.new do |gem|
  gem.name          = "carrierwave-mimetype-magic"
  gem.version       = CarrierWave::MimetypeMagic::VERSION
  gem.authors       = ["Piton4eg"]
  gem.email         = ["piton4eg@mail.ru"]
  gem.description   = %q{Real mime-types for carrierwave}
  gem.summary       = %q{Carrierwave extension to set file content type and extension with mimemagic from real mime type}
  gem.homepage      = "https://github.com/piton4eg/carrierwave-mimetype-magic"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "mimemagic", '~> 0.3.0'
  gem.add_runtime_dependency "carrierwave", '~> 0.10.0'

  gem.license       = 'MIT'
end
