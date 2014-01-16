class RaptorEditorRails::CopyGenerator < Rails::Generators::Base
  source_root RaptorEditorRails::Engine.root.join("vendor/assets")

  def copy_assets
    copy_file "javascripts/raptor.js", "javascripts/raptor.js"
    copy_file "stylesheets/raptor-front-end.css", "stylesheets/raptor-front-end.css"
  end
end
