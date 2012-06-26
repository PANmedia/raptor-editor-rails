$:.push File.expand_path("../lib", __FILE__)

require "raptor_editor_rails/version"

Gem::Specification.new do |s|
  s.name        = "raptor-editor-rails"
  s.version     = RaptorEditorRails::VERSION
  s.authors     = ["Tristan McHardie"]
  s.email       = ["info@jquery-raptor.com"]
  s.homepage    = "http://www.github.com/PANmedia/raptor-editor-rails"
  s.summary     = "Get Raptor Editor into your Rails apps"
  s.description = "The simple way to get Raptor Editor into your Rails applications."

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "> 3.1"
end
