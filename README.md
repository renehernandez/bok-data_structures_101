# DataStructures101 [![Build Status](https://travis-ci.org/renehernandez/data_structures_101.svg)](https://travis-ci.org/renehernandez/data_structures_101) [![Gem Version](https://badge.fury.io/rb/data_structures_101.svg)](https://badge.fury.io/rb/data_structures_101) [![Code Climate](https://codeclimate.com/github/renehernandez/data_structures_101/badges/gpa.svg)](https://codeclimate.com/github/renehernandez/data_structures_101) [![Test Coverage](https://codeclimate.com/github/renehernandez/data_structures_101/badges/coverage.svg)](https://codeclimate.com/github/renehernandez/data_structures_101/coverage)

DataStructures101 is a simple gem that groups several implementations of common data structures usually taught in Computer Science courses. The overall goal of the gem is to provide easy to use functionality (trying to match the behavior of existing structures in Ruby) while providing the user with a framework to test and compare their implementations against.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'data_structures_101'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install data_structures_101

## Usage

```ruby
require 'data_structures_101'
```

### LinkedList example

To create a LinkedList

```ruby
list = DataStructures101::LinkedList.new
```

### HashTable example

To create a hash table using *separate chaining* strategy:

```ruby
hash = DataStructures101::ChainedHashTable.new
```

### Heap example

To create a *min heap* Heap object

```
heap = DataStructures101::Heap.new(2,3,1, -10, min_heap: true)
```

### Documentation

The documentation lives at the [github pages](https://renehernandez.github.io/data_structures_101/). For the nitty gritty details of the implementation go to [http://www.rubydoc.info/gems/data_structures_101](http://www.rubydoc.info/gems/data_structures_101).

You can also go through several posts on [https://bitsofknowledge.net](https://bitsofknowledge.net/tag/data-structures/) where I have discussed the implementations.

## Contributing

In lieu of a formal styleguide, take care to maintain the existing coding style. Add specs for any new or changed functionality and tests it using RSpec.

Bug reports and pull requests are welcome on GitHub at https://github.com/renehernandez/data_structures_101.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

