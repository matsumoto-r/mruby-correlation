# mruby-correlation   [![Build Status](https://travis-ci.org/matsumoto-r/mruby-correlation.svg?branch=master)](https://travis-ci.org/matsumoto-r/mruby-correlation)

Array extended for correlation coefficient

## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'matsumoto-r/mruby-correlation'
end
```

## example

```ruby
assert("Array#r") do
  d = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  assert_equal(1.0, d.r([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))
  assert_equal(0.9923373049285564, d.r([2, 3, 3, 4, 6, 7, 8, 9, 10, 11]))
  assert_equal(-0.9803906931996748, d.r([15, 13, 12, 12, 10, 10, 8, 7, 4, 3]))
end
```

## License
under the MIT License:
- see LICENSE file
