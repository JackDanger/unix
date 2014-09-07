require 'bundler/gem_tasks'
require "rake/extensiontask"

Rake::ExtensionTask.new "unix" do |ext|
  ext.lib_dir = "lib/unix"
end

task :default => [:compile, :build]

task :console => [:compile, :build] do
  `gem install pkg/unix*.gem`
  exec 'irb -r unix'
end
