#!/usr/bin/env rake
require 'bundler'
Bundler::GemHelper.install_tasks

require 'rake/testtask'

Rake::TestTask.new :test do |t|
  t.libs << 'lib'
  t.libs << 'test'
  test_files = FileList['test/**/*_test.rb']
  test_files.exclude('test/rails/*')
  t.test_files = test_files
  t.verbose = true
end

desc 'Default: run tests.'
task :default => [:test]
