$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ym_snippets/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ym_snippets"
  s.version     = YmSnippets::VERSION
  s.authors     = ["Edward Andrews", "Matt Atkins", "Ian Mooney"]
  s.email       = ["edward@yoomee.com", "matt@yoomee.com", "ian@yoomee.com"]
  s.homepage    = ""
  s.summary     = "Summary of YmSnippets."
  s.description = "Description of YmSnippets."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "ym_users", "~> 1.1"

end
