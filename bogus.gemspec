# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bogus/version"

Gem::Specification.new do |s|
  s.name        = "bogus"
  s.version     = Bogus::VERSION
  s.authors     = ["Adam Pohorecki"]
  s.email       = ["adam@pohorecki.pl"]
  s.homepage    = "https://github.com/psyho/bogus"
  s.summary     = %q{Create fakes to make your isolated unit tests reliable.}
  s.description = %q{Decreases the need to write integration tests by ensuring that the things you stub or mock actually exist.}

  s.rubyforge_project = "bogus"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
