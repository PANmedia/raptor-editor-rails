require "raptor_editor_rails"
require "raptor_editor_rails/version"

module RaptorEditorRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copies Raptor Editor #{RaptorEditorRails::RAPTOR_EDITOR_VERSION} to vendor/assets/javascripts"
      source_root RaptorEditorRails::Engine.root.join("vendor/assets/javascripts")

      def copy_files
        copy_file "raptor.js", "vendor/assets/javascripts/raptor.js"
      end
    end
  end
end
