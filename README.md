# MultiRender
Once you provide to a MultiRenderer instance the data it needs in each partial you are rendering in your view, the instance will render the given partial with it's local variables. This is usefull if you have a big view on your project, and you are rendering multiple arrays. Having all your iterations running on your controller can help you to detect a bottle neck that is causing your web page to run slow.

## Example
You can view an example on [this web repo](https://github.com/KarlHeitmann/multi_render_rails_test).

## Usage

You can see a working example on the folder `test/dummy`, on the controller `static_pages` and in it's associated view.

You can write on your controller:

```ruby
@multi = MR.new
@multi.add(:prueba, "shared/test", {foo: 'bar', lorem: 'ipsum'})
```

And in it's associated view

```ruby
<%= @multi.render_partial(:prueba, method(:render)) %>
```

The method will search in it's internal hash the key `:prueba`, and when found, it will call a lambda function that calls the `render` method passed as a parameter from the view.

## TODO

- Add a new alias method to `.add`, so that you can use the `<<` operator to add more data to MultiRender.
- Add a alias so that it is not so verbose to call `@multi.render_partial(:prueba, method(:render))`. Something like `@multi(:prueba, method(:render))`
- The lambda function is working OK on the MR class. But it would be better to include directly the `render` function inside the class.


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'multi_render'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install multi_render
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
