# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/json_boolean_response/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-json_boolean_response"
  spec.version       = Rack::JsonBooleanResponse::VERSION
  spec.authors       = ["Jiajia Wang"]
  spec.email         = ["jjwang0506@gmail.com"]
  spec.summary       = %q{A Rack JSON middleware}
  spec.description   = %q{Convert ruby boolean value to integer}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rack', '>= 0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '>= 3.1.0'
end
