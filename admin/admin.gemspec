$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admin"
  s.version     = Admin::VERSION
  s.authors     = ["Jens Ljungblad"]
  s.email       = ["jens.ljungblad@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of Admin."
  s.description = "Description of Admin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "godmin", "~> 1.5.0"
  s.add_dependency "godmin-tags", "~> 1.0.1"
end
