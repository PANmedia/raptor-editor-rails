class RaptorEditorRails::InstallGenerator < Rails::Generators::Base
  source_root RaptorEditorRails::Engine.root.join("config")

  def copy_config
    copy_file "raptor.yml", "config/raptor.yml"
  end
end
