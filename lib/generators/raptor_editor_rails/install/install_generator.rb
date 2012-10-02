require "raptor_editor_rails"

module RaptorEditorRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Copies Raptor Editor #{RaptorEditorRails::Version::RAPTOR_EDITOR_VERSION} to vendor/assets/javascripts"
      source_root File.expand_path('../../../../../vendor/assets/javascripts', __FILE__)

      def copy_files
        RaptorEditorRails::JS_FILES.each do |file|
          copy_file file, File.join("vendor/assets/javascripts", file)
        end
      end
    end
  end
end
