# NilGuard

Nil safe method chain syntax by Refinements

## Installation

Add this line to your application's Gemfile:

    gem 'nil_guard', github: 'joker1007/nil_guard'

And then execute:

    $ bundle

## Usage

```ruby
using NilGuard::Syntax

# Enable obj.|.method.|.method2

[1, 2, 3].map {|n| n > 2 ? nil : n * 2}
  .map {|n| n.|.to_s.|.gsub(/4/, "four")}
# => ["2", "four", nil]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/nil_guard/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
