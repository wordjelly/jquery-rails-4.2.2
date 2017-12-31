# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "wj-jquery-rails"
  s.version     = '4.2.2.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["André Arko","wordjelly"]
  s.email       = ["bhargav.r.raut@gmail.com"]
  s.homepage    = "https://github.com/rails/jquery-rails"
  s.summary     = "Use jQuery with Rails 4+"
  s.description = "This gem provides jQuery and the jQuery-ujs driver for your Rails 4+ application."
  s.license     = "MIT"

  s.required_ruby_version = ">= 1.9.3"
  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 4.2.0"
  s.add_dependency "thor",     ">= 0.14", "< 2.0"

  s.add_dependency "rails-dom-testing", ">= 1", "< 3"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
