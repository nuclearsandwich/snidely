# encoding: utf-8
begin
	require 'bundler'
rescue LoadError => e
	require 'rubygems'
	require 'bundler'
end

begin
	Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
	$stderr.puts e.message
	$stderr.puts "Run `bundle install` to install missing gems"
	exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
	# gem is a Gem::Specification... see
	# http://docs.rubygems.org/read/chapter/20 for more options
	gem.name = "snidely"
	gem.homepage = "http://github.com/nuclearsandwich/snidely"
	gem.license = "GPLV3 or Later"
	gem.summary = %Q{A .dotfiles manager for people with multiple machines.}
	gem.description =<<desc
Snidely was born of frustration managing dotfiles between Linux machines and OS
X machines and between desktops with large monitors and laptops with small ones.

It's designed to make portable configs a single command endeavor and allow for
as litle or as much per-setup tweaking as possible. All with as little logic as
it can get away with.
desc
	gem.email = "steven@nuclearsandwich.com"
	gem.authors = ["Steven! Ragnarök"]
	# dependencies defined in Gemfile
end

Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
	spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec
