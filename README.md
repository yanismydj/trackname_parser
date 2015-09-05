# TracknameParser

Parses the common dance music trackname into Artist, Trackname, Remix, and Label

#### Example:
```ruby
sample_track_name = "D-Unity - Out Loud (Oscar L Remix) [UNITY] "

parsed_track_name = TracknameParser.parse(sample_track_name)

# parsed_track_name = {
#   artist: 'D-Unity',
#   name:   'Out Loud',
#   remix:  'Oscar L Remix',
#   label:  'UNITY'
# }
```


## Installation

Add this line to your application's Gemfile:

    gem 'trackname_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trackname_parser

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/trackname_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
