# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "exception-hashify/version"

Gem::Specification.new do |s|
  s.name        = "exception-hashify"
  s.version     = Exception::Hashify::VERSION
  s.authors     = ["Rafael Souza"]
  s.email       = ["me@rafaelss.com"]
  s.homepage    = ""
  s.summary     = %q{Transform your exceptions into hashes}
  s.description = %q{A very simples gem that transforms exceptions into hashes}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~> 2.6.0"
end

