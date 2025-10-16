$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "formtastic/trix/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "formtastic-trix"
  s.version     = Formtastic::Trix::VERSION
  s.authors     = ["Tim Glen"]
  s.email       = ["tim@tagstudios.io"]
  s.homepage    = "http://www.tagstudios.io"
  s.summary     = "Trix Editor for Formtastic"
  s.description = "A formtastic input for the Trix Editor - https://trix-editor.org/"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "formtastic", ">= 5.0", "< 6.0"
  # Trix assets are vendored in app/assets; no runtime dependency on the trix gem

  s.add_development_dependency "rspec"
end
