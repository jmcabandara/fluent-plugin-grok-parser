# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-grok-parser"
  spec.version       = "0.0.2"
  spec.authors       = ["kiyoto"]
  spec.email         = ["kiyoto@treasure-data.com"]
  spec.summary       = %q{Fluentd plugin to suppor Logstash-inspired Grok format for parsing logs}
  spec.homepage      = "https://github.com/kiyoto/fluent-plugin-grok-parser"
  spec.license       = "Apache License, Version 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "fluentd", ">=0.10.58"
end
