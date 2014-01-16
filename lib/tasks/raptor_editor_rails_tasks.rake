require "rails"
require "raptor_editor_rails"
require "raptor_editor_rails/config"
require "open-uri"

namespace :raptor_editor_rails do
  desc "Fetch a custom build from raptor-editor.com"
  task :fetch do
    app_root    = (Rails.application || RaptorEditorRails::Engine).root
    dest_root   = app_root.join("vendor/assets")
    js_dest     = dest_root.join("javascripts")
    css_dest    = dest_root.join("stylesheets")
    config_file = app_root.join("config/raptor.yml")
    config_set  = ENV["RAPTOR_CONFIG"] || "normal"

    if !config_file.file? && Rails.application
      raise "config/raptor.yml missing. Please run `rails generate raptor_editor_rails:install`."
    end

    query = RaptorEditorRails::Config.load(config_file, config_set).query

    [js_dest, css_dest].map(&:mkpath)

    files = {
      "raptor.js"            => js_dest.join("raptor.js"),
      "raptor-front-end.css" => css_dest.join("raptor-front-end.css")
    }

    files.each do |src, dest|
      open("https://www.raptor-editor.com/download/file/#{src}?#{query}") do |input|
        File.open(dest, "wb") do |output|
          output.write(input.read)
        end
      end
    end
  end
end
