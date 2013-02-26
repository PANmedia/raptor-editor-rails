$:.push File.expand_path("../lib", __FILE__)

require "raptor_editor_rails/version"

Gem::Specification.new do |s|
  s.name        = "raptor-editor-rails"
  s.version     = RaptorEditorRails::VERSION
  s.authors     = ["Tristan McHardie"]
  s.email       = ["info@raptor-editor.com"]
  s.homepage    = "http://www.github.com/PANmedia/raptor-editor-rails"
  s.summary     = "Raptor Editor on the Rails Asset Pipeline"
  s.description = "The simplest way to get Raptor Editor onto the Asset Pipeline in your Rails applications."

  s.files = Dir["{lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "> 3.1"
  s.add_dependency "jquery-rails", ">= 2.2.0"
  s.add_dependency "jquery-ui-rails", ">= 4.0.0"
end
