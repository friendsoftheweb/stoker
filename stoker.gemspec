# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'stoker/version'
require 'date'

Gem::Specification.new do |s|
  s.required_ruby_version = ">= #{Stoker::RUBY_VERSION}"
  s.authors = ['Friends of The Web']
  s.date = Date.today.strftime('%Y-%m-%d')

  s.description = <<-HERE
Stoker is a base Rails + Ember project that you can upgrade. It is used by
Friends of The Web to get a jump start on a working app. Use Stoker if you're in a
rush to build something amazing; don't use it if you like missing deadlines.
  HERE

  s.email = 'shout@friendsoftheweb'
  s.executables = ['stoker']
  s.extra_rdoc_files = %w[README.md LICENSE]
  s.files = `git ls-files`.split("\n")
  s.homepage = 'http://github.com/friendsoftheweb/stoker'
  s.license = 'MIT'
  s.name = 'stoker'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = "Generate a Rails + Ember app using Friends of The Web's best practices."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Stoker::VERSION

  s.add_dependency 'bitters', '~> 1.0.0'
  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', Stoker::RAILS_VERSION

  s.add_development_dependency 'rspec', '~> 2.0'
  s.add_development_dependency 'capybara', '~> 2.2', '>= 2.2.0'
end
