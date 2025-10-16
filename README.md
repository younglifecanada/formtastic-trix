# Formtastic::Trix
Trix is a text editor written for Basecamp. It's simple and cool and Formtastic needed a plugin for it.

## Compatibility

- Rails: 7.2 and 8.x
- Formtastic: 5.x
- Ruby: 3.1+

## Usage
Add `trix.css` to your `application.css` file and `trix.js` to your `application.js` file.

In your formtastic form, implement the Trix editor like so:
```ruby
<%= semantic_form_for(@user) do |f| %>
  <%= f.inputs do %>
    <%= f.input :bio, as: :trix %>
  <% end %>
<% end %>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'formtastic-trix', '~> 0.2'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install formtastic-trix
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
