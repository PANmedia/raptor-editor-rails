#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require "raptor_editor_rails"
require "open-uri"

desc "Fetch Raptor Editor build"
task :fetch do
  $stderr.puts "Fetching has been temporarily disabled pending changes to the Raptor Editor website."

  # source = "http://www.raptor-editor.com/download"
  # target = RaptorEditorRails::Engine.root.join("vendor/assets/javascripts/blah.html")

  # open(target, "w+") { |f| f << open(source).read }
end
