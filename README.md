# raptor-editor-rails

The simplest way to get [Raptor Editor] onto the asset pipeline in your Rails applications.

## Version

Version 0.2.0 contains Raptor Editor 0.5.11.

## What does raptor-editor-rails do?

It provides the Raptor Editor assets to your Rails applications via the asset pipeline, just like how [jquery-ui-rails] provides [jQuery UI] and [ruby-modernizr] provides [Modernizr].

## Requirements

* [jQuery]
* [jQuery UI] \(minimally Button, Dialog, Menu and Tabs for custom builds)
* a jQuery UI theme

## Usage

Add raptor-editor-rails to your `Gemfile`:

```ruby
gem "raptor-editor-rails"
```

and then run:

```sh
bundle install
```

Now add Raptor Editor to your `app/assets/javascripts/application.js` after jQuery and jQuery UI:

```js
//= require jquery
//= require jquery-ui
//= require raptor
```

Now you can now make elements of your site editable:

```js
$("#my_editable_element").editor();
```

See the [Raptor Editor docs] for more.

## Bugs, Issues and Feature Requests

Please raise an issue on [GitHub][issues].

## Licence

This Gem, jquery-raptor-rails, is distributed under the MIT License.

Raptor Editor is [distributed under GPL][Raptor Editor licence].

## Contributing

1. Fork,
2. Hack,
3. Create a Pull Request.

**Please do not bump the version number**. This will be done by the maintainers when a release is ready.

### Getting the latest version of Raptor Editor

1. Run `rake fetch` to automatically download the latest build from [Raptor Editor][], and
2. update the Raptor Editor version number in `lib/raptor_editor_rails/version.rb` and `README.md` to the value at the top of `raptor.js`.

[Raptor Editor]: http://www.raptor-editor.com/
[jQuery]: http://jquery.com/
[jQuery UI]: http://jqueryui.com/
[jquery-ui-rails]: https://github.com/joliss/jquery-ui-rails
[ruby-modernizr]: https://github.com/josh/ruby-modernizr
[Modernizr]: http://modernizr.com/
[Raptor Editor docs]: http://www.raptor-editor.com/docs
[Raptor Editor licence]: http://www.raptor-editor.com/license
[issues]: https://github.com/PANmedia/raptor-editor-rails/issues
