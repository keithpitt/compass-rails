# -*- encoding: utf-8 -*-
require File.expand_path('../lib/compass-rails/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Scott Davis", "Chris Eppstein"]
  gem.email         = ["jetviper21@gmail.com", "chris@eppsteins.net"]
  gem.description   = %q{Integrate Compass into Rails 4.}
  gem.summary       = %q{Integrate Compass into Rails 4.}
  gem.homepage      = "https://github.com/Compass/compass-rails"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "compass-rails"
  gem.require_paths = ["lib"]
  gem.version       = Compass::Rails::VERSION

  gem.add_runtime_dependency 'compass',         '>= 0.13.alpha.2'
  gem.add_runtime_dependency 'sass',            '>= 3.1.10'
  gem.add_runtime_dependency 'railties',        '>= 4.0.0.beta', '< 5.0'
  gem.add_runtime_dependency 'tilt',            '~> 1.3'
  gem.add_runtime_dependency 'sprockets-rails', '~> 2.0.0.rc3'
end
