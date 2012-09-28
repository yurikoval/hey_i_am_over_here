# -*- encoding: utf-8 -*-
require File.expand_path('../lib/hey_i_am_over_here/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Yuri Kovalov"]
  gem.email         = ["yuri@yurikoval.com"]
  gem.description   = %q{Announce your server presence over Bonjour (DNSSD).}
  gem.summary       = %q{The gem will use DNSSD library to broadcast server's presence upon server startup.}
  gem.homepage      = "https://github.com/yurikoval/hey_i_am_over_here"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hey_i_am_over_here"
  gem.require_paths = ["lib"]
  gem.version       = HeyIAmOverHere::VERSION

  gem.add_dependency "rails", ">= 3.0.5"
  gem.add_dependency "dnssd", "~> 1.3"
end
