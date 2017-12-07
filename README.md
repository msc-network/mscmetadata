# Mscmetadata

This is an expermental project to create a new Music metadata standard protocol using (Ruby &) Protocol Buffers. It is still in very early stage development.

## Installation

```bash

gem build mscmetadata.gemspec

gem install ./mscmetadata-0.0.1.gem
```

## Usage

Create Basic Release

```ruby
irb

require 'mscmetadata'

@r = Release.new
```

Encode & Decode a release for message sending and recieving

```ruby
encoded_release = Release.encode(@r)
Release.decode(encoded_release)
```

At the moment the schema is incomplete, and all this does is create an instance of a Release in memory.

The protocol buffers are stored in the actual GEM currently, this will be not be the case once a stable release is reached. Once they are moved it will also mean other languages can be catered for, and libraries built around them.

## Definitions

Please see <a href="docs/definitions.md">definitions</a> for an extended look at the current protocol definitions.

## Generate Documentation

Ensure you have protoc-gen-doc installed see <a href="https://github.com/pseudomoto/protoc-gen-doc">here</a>

```shell
cd lib/protos
protoc --doc_out=markdown,definitions.md:. *.proto
mv definitions.md doc
```

## Generate Ruby Libraries

```shell
cd lib/protos
protoc --ruby_out=. *.proto
```

### *** Please Note ***

There is a quirk when generating protocol buffers in this (a?) gem that you need to change any associated local require statements to require_relative if they are in the same folder.

eg. The following:

```ruby
require 'google/protobuf'

require 'registration_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "Artist" do
    optional :name, :string, 1
    repeated :registrations, :message, 2, "Registration"
  end
end

Artist = Google::Protobuf::DescriptorPool.generated_pool.lookup("Artist").msgclass
```

Should be changed to:

```ruby
require 'google/protobuf'

require_relative 'registration_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "Artist" do
    optional :name, :string, 1
    repeated :registrations, :message, 2, "Registration"
  end
end

Artist = Google::Protobuf::DescriptorPool.generated_pool.lookup("Artist").msgclass
```

Other languages coming at some point.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

The schemas are being developed in the lib/protos folder.

## Contributing

If you would like to contribute to the future of Music Metadata then get in touch on the issues tab.

Bug reports and pull requests are welcome on GitHub at https://github.com/CromonMS/mscmetadata.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
