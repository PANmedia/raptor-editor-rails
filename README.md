# raptor-editor-rails

The simplest way to get [Raptor Editor] onto the asset pipeline in your Rails applications.

__IMPORTANT: PLEASE READ!__ Some folks are having difficulties with Raptor Editor in its beta form as supplied by this gem. The Raptor core team is literally on the brink of a new release which brings major changes to their build process. We're sitting tight waiting for the new Raptor Editor release before we upgrade raptor-editor-rails. In the mean time, you may want to download and install Raptor Editor manually from http://www.raptor-editor.com/.

## Version

Version 0.2.2 contains Raptor Editor 0.5.11.

## What does raptor-editor-rails do?

It provides the Raptor Editor assets to your Rails applications via the asset pipeline, just like how [jquery-ui-rails] provides [jQuery UI] and [ruby-modernizr] provides [Modernizr].

## Requirements

* [jQuery 1.9+][jQuery]
* [jQuery UI 1.10+][jQuery UI] (minimally Button, Dialog, Menu and Tabs for custom builds)
* a jQuery UI theme

The minimum versions of the [jquery-rails] and [jquery-ui-rails] gems are already dependencies. So, you shouldn't have any trouble if you use these to provide jQuery and jQuery-UI.

## Usage

Add raptor-editor-rails to your `Gemfile`:

```ruby
gem "raptor-editor-rails"
```

and then run:

```sh
bundle install
```

and remember to restart your app.

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
[jquery-rails]: https://github.com/rails/jquery-rails
[jquery-ui-rails]: https://github.com/joliss/jquery-ui-rails
[ruby-modernizr]: https://github.com/josh/ruby-modernizr
[Modernizr]: http://modernizr.com/
[Raptor Editor docs]: http://www.raptor-editor.com/docs
[Raptor Editor licence]: http://www.raptor-editor.com/license
[issues]: https://github.com/PANmedia/raptor-editor-rails/issues
