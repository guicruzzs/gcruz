# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gcruz/version"

Gem::Specification.new do |spec|
  spec.name          = "gcruz"
  spec.version       = Gcruz::VERSION
  spec.authors       = ["guicruzzs"]
  spec.email         = ["guicruzzs@bitbucket.org"]

  spec.summary       = %q{My own gem}
  spec.description   = %q{That's my place, I will do what I want to}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
