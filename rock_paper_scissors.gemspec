# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rock_paper_scissors/version'

Gem::Specification.new do |spec|
  spec.name          = "rock_paper_scissors"
  spec.version       = RockPaperScissors::VERSION
  spec.authors       = ["Jeff Louie"]
  spec.email         = ["jpl7690@yahoo.com"]
  spec.summary       = %q{Rock Paper Scissors}
  spec.description   = %q{Plays a game of rock paper scissors}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "pry-byebug"
end
