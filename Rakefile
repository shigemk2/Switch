# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'motion/project/template/ios'
require 'bundler'

is_test = ARGV.join(' ') =~ /spec/
if is_test
  require 'guard/motion'
  Bundler.require :default, :spec
else
  Bundler.require
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Switch'
  if is_test
    app.redgreen_style = :full
  end
end
