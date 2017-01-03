# jquery-rails

This gem has been modified in the jquery-ujs.js file, so that the rails.submit callback accepts extra_params.
This is because usually in jquery, when we trigger a event, we can pass extra params as a second argument. However ujs does not automatically provide for that situation, and hence any additional arguments passed to jquery.trigger calls are lost in the ujs handlers.
eg:

```
$("#myform").trigger("submit",{"hello" : "world"});
//this submit is picked up normally by the ujs rails.submit handler, but the second argument the hash {} is not passed
//forwards
//this gem is modified so that the second argument is passed forwards as well.
```

So currently the extra arguments are available in 
rails.submit -> handleRemote -> ajax : Before.

just follow the function rails.submit, to see where the "extra_parameters" argument is passed forwards.



jQuery! For Rails! So great.

This gem provides:

  * jQuery 1, 2 and 3
  * the jQuery UJS adapter
  * assert_select_jquery to test jQuery responses in Ruby tests

## Versions

Starting with v2.1, the jquery-rails gem follows these version guidelines
to provide more control over your app's jQuery version from your Gemfile:

```
patch version bump = updates to jquery-ujs, jquery-rails, and patch-level updates to jQuery
minor version bump = minor-level updates to jQuery
major version bump = major-level updates to jQuery and updates to Rails which may be backwards-incompatible
```

See [VERSIONS.md](VERSIONS.md) to see which versions of jquery-rails bundle which
versions of jQuery.

## Installation

The jquery and jquery-ujs files will be added to the asset pipeline and available for you to use. If they're not already in `app/assets/javascripts/application.js` by default, add these lines:

```js
//= require jquery
//= require jquery_ujs
```

If you want to use jQuery 2, you can require `jquery2` instead:

```js
//= require jquery2
//= require jquery_ujs
```

And if you want to use jQuery 3, you can require `jquery3`:

```js
//= require jquery3
//= require jquery_ujs
```

For jQuery UI, we recommend the [jquery-ui-rails](https://github.com/joliss/jquery-ui-rails) gem, as it includes the jquery-ui css and allows easier customization.

*As of v3.0, jquery-rails no longer includes jQuery UI. Use the
jquery-ui-rails gem above.*

## Contributing to jquery-rails

jquery-rails is work of many contributors. You're encouraged to submit pull requests, propose
features and discuss issues.

* If it's an issue pertaining to the jquery-ujs javascript, please report it to the [jquery-ujs project](https://github.com/rails/jquery-ujs).

* If the jQuery scripts are outdated (i.e. maybe a new version of jquery was released yesterday), feel free to open an issue and prod us to get that thing updated. However, for security reasons, we won't be accepting pull requests with updated jQuery scripts.

See [CONTRIBUTING](CONTRIBUTING.md).

## License
jquery-rails is released under the [MIT License](MIT-LICENSE).

## Acknowledgements

Many thanks are due to all of [the jquery-rails contributors](https://github.com/rails/jquery-rails/graphs/contributors). Special thanks to [JangoSteve](http://github.com/JangoSteve) for tirelessly answering questions and accepting patches, and the [Rails Core Team](https://github.com/organizations/rails/teams/617) for making jquery-rails an official part of Rails 3.1.
