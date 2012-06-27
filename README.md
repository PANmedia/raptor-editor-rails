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
* `raptor.light.min.js` is Raptor Editor AND
    [Rangy](http://code.google.com/p/rangy/).

If, by some chance, you are already using Rangy then use `raptor.min`.
Otherwise, use `raptor.light.min`.

Add raptor-editor-rails to your `Gemfile`:

```ruby
gem "raptor-editor-rails"
```

and then

```sh
bundle install
```

Add Raptor Editor to your `app/assets/javascripts/application.js` after jQuery
and jQuery UI:

```js
//= require jquery
//= require jquery-ui
//= require raptor.light.min # or raptor.min.js if you already have Rangy
```

You can now make elements of your site editable using:

```js
$("#my_editable_element").editor();
```

See the [Raptor Editor documentation](http://www.raptor-editor.com/demo) for
more information.

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
2. Update `RAPTOR_EDITOR_VERSION` in `lib/raptor_editor_rails/version.rb` (don't
    include the "v" in the tag name),
3. Run `rake fetch` to automatically download the correct files.
