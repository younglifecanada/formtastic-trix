# Formtastic::Trix

A [Formtastic](https://github.com/formtastic/formtastic) input for the [Trix Editor](https://trix-editor.org/).

## Compatibility

- Rails: 6.0 – 8.x
- Formtastic: 5.x – 6.x
- Ruby: 3.1+
- Trix: 2.x (installed separately)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'formtastic-trix', '~> 0.3'
```

Then run:
```bash
$ bundle install
```

### Installing Trix

This gem does **not** bundle Trix assets. Install Trix separately using one of these methods:

**If you're using Action Text** (Rails 7+), Trix is already installed — no extra steps needed.

**Using importmap** (Rails 7+):
```bash
$ bin/importmap pin trix
```

**Using npm/yarn:**
```bash
$ yarn add trix
# or
$ npm install trix
```

Then import Trix in your JavaScript entrypoint:
```javascript
import "trix"
```

And include the Trix stylesheet in your CSS:
```css
@import "trix/dist/trix.css";
```

## Usage

In your Formtastic form, use the `:trix` input type:

```ruby
<%= semantic_form_for(@user) do |f| %>
  <%= f.inputs do %>
    <%= f.input :bio, as: :trix %>
  <% end %>
<% end %>
```

### Optional Stylesheets

This gem includes optional stylesheets for Formtastic and ActiveAdmin integration:

```css
/* For Formtastic forms */
@import 'trix-formtastic';

/* For ActiveAdmin (includes Formtastic styles) */
@import 'trix-activeadmin';
```

## Contributing

Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
