
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bootstrap_confirm/version"

Gem::Specification.new do |spec|
  spec.name          = "bootstrap_confirm"
  spec.version       = BootstrapConfirm::VERSION
  spec.authors       = ["Abhishek Kanojia"]
  spec.email         = ["abhishek.kanojia3193@gmail.com"]

  spec.summary       = %q{ BootstrapConfirm provides bootstrap confirmation message just using bootstrap modal. }
  spec.description   = %q{ BootstrapConfirm provides bootstrap confirmation box, easy to integrate with rails. }
  spec.homepage      = "https://github.com/abhikanojia/bootstrap_confirm"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'jquery-rails', '>= 4.3.1'
  spec.add_dependency 'bootstrap-sass', '>= 3.3.7'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
