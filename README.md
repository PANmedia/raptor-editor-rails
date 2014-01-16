# raptor-editor-rails

The simplest way to get [Raptor Editor](http://www.raptor-editor.com/) onto the
asset pipeline in your Rails applications.

__IMPORTANT: PLEASE READ!__ Some folks are having difficulties with Raptor Editor in its beta form as supplied by this gem. The Raptor core team is literally on the brink of a new release which brings major changes to their build process. We're sitting tight waiting for the new Raptor Editor release before we upgrade raptor-editor-rails. In the mean time, you may want to download and install Raptor Editor manually from http://www.raptor-editor.com/.

## Version

Version 0.2.2 contains Raptor Editor 0.5.11.

## Usage

### Using the pre-packaged build

This gem comes with a pre-packaged build Raptor Editor from the options in
[raptor.yml](https://github.com/PANmedia/raptor-editor-rails/blob/master/config/raptor.yml).

1. Add raptor-editor-rails to your `Gemfile`:

```ruby
gem "raptor-editor-rails"
```

2. Run `bundle install`. Don't forget to restart your app!

3. Add Raptor Editor to your `app/assets/javascripts/application.js`:

```js
//= require raptor
```

4. Make elements of your site editable:

```js
$("#my_editable_element").raptor();
```

See the [Raptor Editor docs](http://www.raptor-editor.com/docs) for more.

### Copying Raptor Editor to your project

If you just want to copy Raptor Editor to your project, simply run
`rails generate raptor_editor_rails:copy`. You'll find the assets in
`vendor/assets/{javascripts,stylesheets}`.

### Downloading your own build

If the pre-packaged build of Raptor Editor doesn't suit your requirements then
`raptor-editor-rails` also allows you to create your own configuration and
download the latest version.

1. Run `rails generate raptor_editor_rails:install` to copy `config/raptor.yml`
to your project.

2. Modify `config/raptor.yml` to suit your needs.

3. Run `rake raptor_editor_rails:fetch` to download the latest version to your
`vendor/assets` directory.

## Bugs, Issues and Feature Requests

For all issues related to raptor-editor-rails, please raise an issue on
[GitHub](https://github.com/PANmedia/raptor-editor-rails/issues). If the issue
is related to Raptor Editor, please raise an issue
[over there][https://github.com/PANmedia/raptor-editor/issues].

Better still, fork and contribute!

## Licence

This gem, jquery-raptor-rails, is distributed under the MIT License.

Raptor Editor is [distributed under GPL](http://www.raptor-editor.com/license).

## Contributing

1. Fork,
2. Hack,
3. Create a Pull Request.

**Please do not bump the version number**. This will be done by the maintainers
when a release is ready.

### Getting the latest version of Raptor Editor

1. From the `raptor-editor-rails` directory, run `rake raptor_editor_rails:fetch`
to download the latest build of Raptor Editor using the options in `config/raptor.yml`.

2. Update the Raptor Editor version number in `lib/raptor_editor_rails/version.rb`
and `README.md` to the value at the top of `raptor.js`.

### Downloading a debug build

Run `rake raptor_editor_rails:fetch RAPTOR_CONFIG=debug`.

Options for debug (or any other custom) config are in `config/raptor.yml`.
