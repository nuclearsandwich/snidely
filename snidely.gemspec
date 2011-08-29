# -*- encoding: utf-8 -*-
require File.expand_path('../lib/snidely/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steven! Ragnar\303\266k"]
  gem.email         = ["steven@nuclearsandwich.com"]
  gem.description   = %q{A (hopefully) simple, yet powerful config tool.}
  gem.summary       = %q{A (hopefully) simple, yet powerful config tool.}
  gem.homepage      = ''

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "snidely"
  gem.require_paths = ['lib']
  gem.version       = Snidely::VERSION
end

