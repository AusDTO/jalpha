$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "jalpha/version"

Gem::Specification.new do |spec|
  spec.name          = "jalpha"
  spec.version       = Jalpha::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = "Mick Pollard"
  spec.summary       = "Opinionated Jekyll project generator."
  spec.description   = "Jalpha scaffolds new Jekyll projects complete with everything needed for continual deployment to a cloud foundry platform."
  spec.email         = "mick.pollard@digital.gov.au"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency("thor", "~> 0")
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
