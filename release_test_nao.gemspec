
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "release_test_nao/version"

Gem::Specification.new do |spec|
  spec.name          = "release_test_nao"
  spec.version       = ReleaseTestNao::VERSION
  spec.authors       = ["NA070"]
  spec.email         = ["example@example.com"]
  spec.summary       = 'Summary'
  spec.description   = 'Description'
  spec.homepage      = 'http://example.com'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
