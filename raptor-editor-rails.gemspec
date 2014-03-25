$:.push File.expand_path("../lib", __FILE__)

require "raptor_editor_rails/version"

Gem::Specification.new do |s|
  s.name        = "raptor-editor-rails"
  s.version     = RaptorEditorRails::VERSION
  s.authors     = ["PANmedia"]
  s.email       = ["raptor-editor-rails@pan.co.nz"]
  s.homepage    = "https://www.github.com/PANmedia/raptor-editor-rails"
  s.summary     = "Raptor Editor on the Rails Asset Pipeline"
  s.description = "The simplest way to get Raptor Editor onto the Asset Pipeline in your Rails applications."

  s.files = Dir["{config,lib,vendor}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "> 3.1"
end
