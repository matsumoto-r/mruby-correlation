MRuby::Gem::Specification.new('mruby-correlation') do |spec|
  spec.license = 'MIT'
  spec.authors = 'MATSUMOTO Ryosuke'
  spec.version = '0.0.1'
  spec.add_dependency 'mruby-enumerator', core: 'mruby-enumerator'
  spec.add_dependency 'mruby-math', core: 'mruby-math'
end
