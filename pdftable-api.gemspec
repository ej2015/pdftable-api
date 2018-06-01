# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pdftable/version'

Gem::Specification.new do |spec|
  spec.name          = "pdftable-api"
  spec.version       = Pdftable::VERSION
  spec.authors       = ["Edgar"]
  spec.email         = ["zorro.ej@gmail.com"]

  spec.summary       = %q{A simple client for PDFTable API}
  spec.description   = %q{Pdftable.client provides two methods: remaining_pages and convert}
  spec.homepage      = "https://github.com/ej2015/pdftable-api.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

	spec.add_dependency "rest-client", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
	spec.add_development_dependency "fakeweb", "~> 1.3.0"
	spec.add_development_dependency "pry"
end
