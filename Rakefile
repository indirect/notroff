require 'rspec'
require 'rubygems/package_task'
require 'rake/clean'

task :default =>  [ :spec, :gem ]

gem_spec = eval(File.read("notroff.gemspec"))
Gem::PackageTask.new( gem_spec ) do |t|
  t.need_zip = true
  t.need_tar = true
end


desc "Run all examples"
task :spec do |t|
  sh "rspec -Ispec -Ilib -rnotroff spec"
end

task :html do |t|
  sh "ruby -Ilib -rnotroff bin/notroff -v test.nr test.html"
end
CLEAN << 'test.html'

task :odt do |t|
  sh "ruby -Ilib -rnotroff bin/notroff -o test.nr test.odt"
end
CLEAN << 'test.odt'

task :docbook do |t|
  sh "ruby -Ilib -rnotroff bin/notroff -v -d test.nr test.xml"
end
CLEAN << 'test.xml'

task :code do |t|
  sh "ruby -Ilib -rnotroff bin/notroff -s test.nr test_spec.rb"
end
CLEAN << 'test.xml'


task :push => :gem do |t|
  sh "gem push pkg/#{gem_spec.name}-#{gem_spec.version}.gem"
end

CLEAN << 'pkg'

