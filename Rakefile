#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require "raptor_editor_rails"

desc "Fetch Raptor Editor builds from GitHub"
task :fetch do
  tag = "v#{RaptorEditorRails::RAPTOR_EDITOR_VERSION}"
  files = RaptorEditorRails::JS_FILES.join(",")
  source = "https://raw.github.com/PANmedia/Raptor/#{tag}/packages/\\{#{files}\\}"
  target = File.join(File.expand_path('..', __FILE__), "vendor/assets/javascripts")

  `mkdir -p #{target} ; cd #{target} ; curl -O #{source} ; cd -`
end
