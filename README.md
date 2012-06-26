# raptor-editor-rails

The simplest way to get [Raptor Editor](http://www.raptor-editor.com/) onto the
Asset Pipeline in your Rails applications.

## Requirements

* [jQuery](http://jquery.com/),
* [jQuery UI](http://jqueryui.com/),
* a jQuery UI theme.

## Usage

raptor-editor-rails provides two Raptor Editor packages:

* `raptor.min.js` is just Raptor Editor on its own, and
* `raptor.light.min.js` is Raptor Editor and
    [Rangy](http://code.google.com/p/rangy/).

If by some chance you are already using Rangy then use `raptor.min`.
Otherwise, use `raptor.light.min`.

1. Add `gem "raptor-editor-rails"` to your app's `Gemfile`.
2. Run `bundle install`.
3. Add `require raptor.light.min` (or `require raptor.min` if you already have
    Rangy) to your app's `app/assets/javascripts/application.js` file. Make sure
    Raptor Editor is included AFTER jQuery and jQuery UI!

## Bugs, Issues and Feature Requests

Please raise an issue on
[GitHub](https://github.com/PANmedia/raptor-editor-rails/issues).

## License

This Gem, jquery-raptor-rails, is distributed under the MIT License.

Raptor Editor is [distributed under GPL](http://www.raptor-editor.com/license).

## Contributing

1. Fork,
2. Hack,
3. Create a Pull Request.

### Getting the latest version of Raptor Editor

1. Find the latest version number from the latest release's tag name at
    https://github.com/PANmedia/Raptor/tags,
2. Update RAPTOR_EDITOR_VERSION in lib/raptor_editor_rails/version.rb (don't
    include the "v" in the tag name),
3. Run `rake fetch` to automatically download the correct files.
