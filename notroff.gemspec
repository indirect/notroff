require 'rake'

Gem::Specification.new do |s|
  s.name = "notroff"
  s.version = "0.3.5"
  s.authors = ["Russ Olsen"]
  s.date = %q{2012-09-03}
  s.description = 'NotRoff A simple text to openoffice filter'
  s.summary = s.description
  s.email = 'russ@russolsen.com'
  s.files = FileList[ 'readme.nr', 'spec/**/*', 'lib/**/*' ]
  s.bindir = "bin"
  s.executables = %w{notroff yesroff}
  s.require_path = "lib"
  s.homepage = 'http://www.russolsen.com'
  s.add_dependency('rubyzip')
  s.add_development_dependency('rspec')
end