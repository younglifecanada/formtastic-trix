$:.push File.expand_path("../lib", __FILE__)

require "formtastic/trix/version"

Gem::Specification.new do |s|
  s.name        = "formtastic-trix"
  s.version     = Formtastic::Trix::VERSION
  s.authors     = ["Tim Glen"]
  s.email       = ["tim@tagstudios.io"]
  s.homepage    = "http://www.tagstudios.io"
  s.summary     = "Trix Editor for Formtastic"
  s.description = "A formtastic input for the Trix Editor - https://trix-editor.org/"
  s.license     = "MIT"

  s.required_ruby_version = ">= 3.1"

  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "formtastic", ">= 5.0", "< 7.0"

  s.add_development_dependency "rspec"
end
