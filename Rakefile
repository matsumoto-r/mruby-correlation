MRUBY_CONFIG=File.expand_path(ENV["MRUBY_CONFIG"] || "build_config.rb")
MRUBY_VERSION=ENV["MRUBY_VERSION"] || "1.2.0"

file :mruby do
  sh "git clone --depth=1 git://github.com/mruby/mruby.git"
end

desc "compile binary"
task :compile => :mruby do
  sh "cd mruby && MRUBY_CONFIG=#{MRUBY_CONFIG} rake all"
end

desc "test"
task :test => :mruby do
  sh "cd mruby && MRUBY_CONFIG=#{MRUBY_CONFIG} rake all test"
end

desc "check"
task :check => :mruby do
  sh "cd mruby && MRUBY_CONFIG=#{MRUBY_CONFIG} rake"
  sh "cd misc && make test"
  sh "./mruby/bin/mruby ./misc/ar_cc.rb"
end

desc "cleanup"
task :clean do
  sh "cd mruby && rake deep_clean"
end

task :default => :test
