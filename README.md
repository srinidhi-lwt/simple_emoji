# SimpleEmoji

A large collection of ruby aliases for emojis and special symbols. Use Simple Emoji instead of using unreadable unicode characters starting with &#. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_emoji'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_emoji

## Usage

emoji = SimpleEmoji::Index.new

emoji.grinning_face
 => 😀
emoji.winking_face
 => 😜
emoji.tears_of_joy
 => 😂

## Development
A emoji is enclosed within a span tag. The actual code rendered is `"<span class=\"emoji-winking-face\">&#128521</span>"` which gives flexibility for css. 

&#128521 is the decimal code for the emoji 😜

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/simple_emoji. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleEmoji project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/simple_emoji/blob/master/CODE_OF_CONDUCT.md).
